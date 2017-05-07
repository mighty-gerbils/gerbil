(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g28328_|
    (gx#core-quote-syntax '=>))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g28329_|
    (gx#core-quote-syntax 'else))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g28330_|
    (gx#core-quote-syntax 'else))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g28347_|
    (gx#core-quote-syntax 'values))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g28356_|
    (gx#core-quote-syntax 'values))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g28357_|
    (gx#core-quote-syntax 'values))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g28364_|
    (gx#core-quote-syntax 'unquote-splicing))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g28365_|
    (gx#core-quote-syntax 'unquote))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g28368_|
    (gx#core-quote-syntax 'unquote-splicing))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g28369_|
    (gx#core-quote-syntax 'unquote-splicing))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g28370_|
    (gx#core-quote-syntax 'unquote))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g28371_|
    (gx#core-quote-syntax 'quasiquote))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g28374_|
    (gx#core-quote-syntax '<...>))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g28375_|
    (gx#core-quote-syntax '<>))
  (begin
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#lambda|
      (lambda (_stx4627_)
        (let ((_simple-lambda?4630_
               (lambda (_hd7780_) (gx#stx-andmap gx#identifier? _hd7780_))))
          (let ((_opt-lambda?4632_
                 (lambda (_hd7632_)
                   ((letrec ((_lp7635_
                              (lambda (_rest7638_ _opt?7640_)
                                (let ((_g76437655_
                                       (lambda (_g76447651_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g76447651_))))
                                  (let ((_g76427670_
                                         (lambda (_g76447659_)
                                           ((lambda ()
                                              (if _opt?7640_
                                                  (let ((_$e7666_
                                                         (gx#stx-null?
                                                          _rest7638_)))
                                                    (if _$e7666_
                                                        _$e7666_
                                                        (gx#identifier?
                                                         _rest7638_)))
                                                  '#f))))))
                                    (let ((_g76417776_
                                           (lambda (_g76447674_)
                                             (if (gx#stx-pair? _g76447674_)
                                                 (let ((_e76477677_
                                                        (gx#syntax-e
                                                         _g76447674_)))
                                                   (let ((_hd76487681_
                                                          (##car _e76477677_))
                                                         (_tl76497684_
                                                          (##cdr _e76477677_)))
                                                     ((lambda (_L7687_ _L7689_)
                                                        (let ((_g77057719_
                                                               (lambda (_g77067715_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g77067715_))))
                  (let ((_g77047730_
                         (lambda (_g77067723_)
                           ((lambda ()
                              (if (gx#identifier? _L7689_)
                                  (if (not _opt?7640_)
                                      (_lp7635_ _L7687_ '#f)
                                      '#f)
                                  '#f))))))
                    (let ((_g77037772_
                           (lambda (_g77067734_)
                             (if (gx#stx-pair? _g77067734_)
                                 (let ((_e77087737_ (gx#syntax-e _g77067734_)))
                                   (let ((_hd77097741_ (##car _e77087737_))
                                         (_tl77107744_ (##cdr _e77087737_)))
                                     (if (gx#stx-pair? _tl77107744_)
                                         (let ((_e77117747_
                                                (gx#syntax-e _tl77107744_)))
                                           (let ((_hd77127751_
                                                  (##car _e77117747_))
                                                 (_tl77137754_
                                                  (##cdr _e77117747_)))
                                             (if (gx#stx-null? _tl77137754_)
                                                 ((lambda (_L7757_)
                                                    (if (gx#identifier?
                                                         _L7757_)
                                                        (_lp7635_ _L7687_ '#t)
                                                        (_g77047730_
                                                         _g77067734_)))
                                                  _hd77097741_)
                                                 (_g77047730_ _g77067734_))))
                                         (_g77047730_ _g77067734_))))
                                 (_g77047730_ _g77067734_)))))
                      (_g77037772_ _L7689_)))))
              _tl76497684_
              _hd76487681_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g76427670_ _g76447674_)))))
                                      (_g76417776_ _rest7638_)))))))
                      _lp7635_)
                    _hd7632_
                    '#f))))
            (let ((_kw-lambda?4634_
                   (lambda (_hd7158_)
                     ((letrec ((_lp7161_
                                (lambda (_rest7164_ _opt?7166_ _key?7167_)
                                  (let ((_g71727201_
                                         (lambda (_g71737197_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g71737197_))))
                                    (let ((_g71717216_
                                           (lambda (_g71737205_)
                                             ((lambda ()
                                                (if _key?7167_
                                                    (let ((_$e7212_
                                                           (gx#stx-null?
                                                            _rest7164_)))
                                                      (if _$e7212_
                                                          _$e7212_
                                                          (gx#identifier?
                                                           _rest7164_)))
                                                    '#f))))))
                                      (let ((_g71707322_
                                             (lambda (_g71737220_)
                                               (if (gx#stx-pair? _g71737220_)
                                                   (let ((_e71937223_
                                                          (gx#syntax-e
                                                           _g71737220_)))
                                                     (let ((_hd71947227_
                                                            (##car _e71937223_))
                                                           (_tl71957230_
                                                            (##cdr _e71937223_)))
                                                       ((lambda (_L7233_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L7235_)
                  (let ((_g72517265_
                         (lambda (_g72527261_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g72527261_))))
                    (let ((_g72507276_
                           (lambda (_g72527269_)
                             ((lambda ()
                                (if (gx#identifier? _L7235_)
                                    (if (not _opt?7166_)
                                        (_lp7161_ _L7233_ '#f _key?7167_)
                                        '#f)
                                    '#f))))))
                      (let ((_g72497318_
                             (lambda (_g72527280_)
                               (if (gx#stx-pair? _g72527280_)
                                   (let ((_e72547283_
                                          (gx#syntax-e _g72527280_)))
                                     (let ((_hd72557287_ (##car _e72547283_))
                                           (_tl72567290_ (##cdr _e72547283_)))
                                       (if (gx#stx-pair? _tl72567290_)
                                           (let ((_e72577293_
                                                  (gx#syntax-e _tl72567290_)))
                                             (let ((_hd72587297_
                                                    (##car _e72577293_))
                                                   (_tl72597300_
                                                    (##cdr _e72577293_)))
                                               (if (gx#stx-null? _tl72597300_)
                                                   ((lambda (_L7303_)
                                                      (if (gx#identifier?
                                                           _L7303_)
                                                          (_lp7161_
                                                           _L7233_
                                                           '#t
                                                           _key?7167_)
                                                          '#f))
                                                    _hd72557287_)
                                                   (_g72507276_ _g72527280_))))
                                           (_g72507276_ _g72527280_))))
                                   (_g72507276_ _g72527280_)))))
                        (_g72497318_ _L7235_)))))
                _tl71957230_
                _hd71947227_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g71717216_
                                                    _g71737220_)))))
                                        (let ((_g71697364_
                                               (lambda (_g71737326_)
                                                 (if (gx#stx-pair? _g71737326_)
                                                     (let ((_e71857329_
                                                            (gx#syntax-e
                                                             _g71737326_)))
                                                       (let ((_hd71867333_
                                                              (##car _e71857329_))
                                                             (_tl71877336_
                                                              (##cdr _e71857329_)))
                                                         (if (gx#stx-datum?
                                                              _hd71867333_)
                                                             (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _hd71867333_)
                                 '#!key)
                         (if (gx#stx-pair? _tl71877336_)
                             (let ((_e71887339_ (gx#syntax-e _tl71877336_)))
                               (let ((_hd71897343_ (##car _e71887339_))
                                     (_tl71907346_ (##cdr _e71887339_)))
                                 ((lambda (_L7349_ _L7351_)
                                    (if (gx#identifier? _L7351_)
                                        (_lp7161_ _L7349_ _opt?7166_ '#t)
                                        '#f))
                                  _tl71907346_
                                  _hd71897343_)))
                             (_g71707322_ _g71737326_))
                         (_g71707322_ _g71737326_))
                     (_g71707322_ _g71737326_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g71707322_
                                                      _g71737326_)))))
                                          (let ((_g71687480_
                                                 (lambda (_g71737368_)
                                                   (if (gx#stx-pair?
                                                        _g71737368_)
                                                       (let ((_e71777371_
                                                              (gx#syntax-e
                                                               _g71737368_)))
                                                         (let ((_hd71787375_
                                                                (##car _e71777371_))
                                                               (_tl71797378_
                                                                (##cdr _e71777371_)))
                                                           (if (gx#stx-pair?
                                                                _tl71797378_)
                                                               (let ((_e71807381_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl71797378_)))
                         (let ((_hd71817385_ (##car _e71807381_))
                               (_tl71827388_ (##cdr _e71807381_)))
                           ((lambda (_L7391_ _L7393_ _L7394_)
                              (if (gx#stx-keyword? _L7394_)
                                  (let ((_g74097423_
                                         (lambda (_g74107419_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g74107419_))))
                                    (let ((_g74087434_
                                           (lambda (_g74107427_)
                                             ((lambda ()
                                                (if (gx#identifier? _L7393_)
                                                    (_lp7161_
                                                     _L7391_
                                                     _opt?7166_
                                                     '#t)
                                                    '#f))))))
                                      (let ((_g74077476_
                                             (lambda (_g74107438_)
                                               (if (gx#stx-pair? _g74107438_)
                                                   (let ((_e74127441_
                                                          (gx#syntax-e
                                                           _g74107438_)))
                                                     (let ((_hd74137445_
                                                            (##car _e74127441_))
                                                           (_tl74147448_
                                                            (##cdr _e74127441_)))
                                                       (if (gx#stx-pair?
                                                            _tl74147448_)
                                                           (let ((_e74157451_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl74147448_)))
                     (let ((_hd74167455_ (##car _e74157451_))
                           (_tl74177458_ (##cdr _e74157451_)))
                       (if (gx#stx-null? _tl74177458_)
                           ((lambda (_L7461_)
                              (if (gx#identifier? _L7461_)
                                  (_lp7161_ _L7391_ _opt?7166_ '#t)
                                  '#f))
                            _hd74137445_)
                           (_g74087434_ _g74107438_))))
                   (_g74087434_ _g74107438_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g74087434_
                                                    _g74107438_)))))
                                        (_g74077476_ _L7393_))))
                                  (_g71697364_ _g71737368_)))
                            _tl71827388_
                            _hd71817385_
                            _hd71787375_)))
                       (_g71697364_ _g71737368_))))
               (_g71697364_ _g71737368_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g71687480_ _rest7164_)))))))))
                        _lp7161_)
                      _hd7158_
                      '#f
                      '#f))))
              (let ((_generate-bind4636_
                     (lambda (_e6894_)
                       (if (gx#underscore? _e6894_)
                           (gx#genident _e6894_)
                           _e6894_))))
                (let ((_check-duplicate-bindings4637_
                       (lambda (_hd6591_)
                         (let ((_cons-id6594_
                                (lambda (_id6890_ _ids6892_)
                                  (if (gx#underscore? _id6890_)
                                      _ids6892_
                                      (cons _id6890_ _ids6892_)))))
                           ((letrec ((_lp6597_
                                      (lambda (_rest6600_ _ids6602_)
                                        (let ((_g66056617_
                                               (lambda (_g66066613_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g66066613_))))
                                          (let ((_g66046628_
                                                 (lambda (_g66066621_)
                                                   ((lambda ()
                                                      (gx#check-duplicate-identifiers
                                                       (if (gx#stx-null?
                                                            _rest6600_)
                                                           _ids6602_
                                                           (_cons-id6594_
                                                            _rest6600_
                                                            _ids6602_))
                                                       _stx4627_))))))
                                            (let ((_g66036886_
                                                   (lambda (_g66066632_)
                                                     (if (gx#stx-pair?
                                                          _g66066632_)
                                                         (let ((_e66096635_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g66066632_)))
                   (let ((_hd66106639_ (##car _e66096635_))
                         (_tl66116642_ (##cdr _e66096635_)))
                     ((lambda (_L6645_ _L6647_)
                        (if (gx#identifier? _L6647_)
                            (_lp6597_
                             _L6645_
                             (_cons-id6594_ _L6647_ _ids6602_))
                            (if (gx#stx-pair? _L6647_)
                                (let ((_g66636677_
                                       (lambda (_g66646673_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g66646673_))))
                                  (let ((_g66626718_
                                         (lambda (_g66646681_)
                                           (if (gx#stx-pair? _g66646681_)
                                               (let ((_e66666684_
                                                      (gx#syntax-e
                                                       _g66646681_)))
                                                 (let ((_hd66676688_
                                                        (##car _e66666684_))
                                                       (_tl66686691_
                                                        (##cdr _e66666684_)))
                                                   (if (gx#stx-pair?
                                                        _tl66686691_)
                                                       (let ((_e66696694_
                                                              (gx#syntax-e
                                                               _tl66686691_)))
                                                         (let ((_hd66706698_
                                                                (##car _e66696694_))
                                                               (_tl66716701_
                                                                (##cdr _e66696694_)))
                                                           (if (gx#stx-null?
                                                                _tl66716701_)
                                                               ((lambda (_L6704_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_lp6597_ _L6645_ (_cons-id6594_ _L6704_ _ids6602_)))
                        _hd66676688_)
                       (_g66636677_ _g66646681_))))
               (_g66636677_ _g66646681_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g66636677_ _g66646681_)))))
                                    (_g66626718_ _L6647_)))
                                (if (gx#stx-keyword? _L6647_)
                                    (let ((_g67226734_
                                           (lambda (_g67236730_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g67236730_))))
                                      (let ((_g67216836_
                                             (lambda (_g67236738_)
                                               (if (gx#stx-pair? _g67236738_)
                                                   (let ((_e67266741_
                                                          (gx#syntax-e
                                                           _g67236738_)))
                                                     (let ((_hd67276745_
                                                            (##car _e67266741_))
                                                           (_tl67286748_
                                                            (##cdr _e67266741_)))
                                                       ((lambda (_L6751_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L6753_)
                  (let ((_g67656779_
                         (lambda (_g67666775_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g67666775_))))
                    (let ((_g67646790_
                           (lambda (_g67666783_)
                             ((lambda ()
                                (_lp6597_
                                 _L6751_
                                 (_cons-id6594_ _L6753_ _ids6602_)))))))
                      (let ((_g67636832_
                             (lambda (_g67666794_)
                               (if (gx#stx-pair? _g67666794_)
                                   (let ((_e67686797_
                                          (gx#syntax-e _g67666794_)))
                                     (let ((_hd67696801_ (##car _e67686797_))
                                           (_tl67706804_ (##cdr _e67686797_)))
                                       (if (gx#stx-pair? _tl67706804_)
                                           (let ((_e67716807_
                                                  (gx#syntax-e _tl67706804_)))
                                             (let ((_hd67726811_
                                                    (##car _e67716807_))
                                                   (_tl67736814_
                                                    (##cdr _e67716807_)))
                                               (if (gx#stx-null? _tl67736814_)
                                                   ((lambda (_L6817_)
                                                      (_lp6597_
                                                       _L6751_
                                                       (_cons-id6594_
                                                        _L6817_
                                                        _ids6602_)))
                                                    _hd67696801_)
                                                   (_g67646790_ _g67666794_))))
                                           (_g67646790_ _g67666794_))))
                                   (_g67646790_ _g67666794_)))))
                        (_g67636832_ _L6753_)))))
                _tl67286748_
                _hd67276745_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g67226734_
                                                    _g67236738_)))))
                                        (_g67216836_ _L6645_)))
                                    (if (eq? (gx#stx-e _L6647_) '#!key)
                                        (let ((_g68406852_
                                               (lambda (_g68416848_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g68416848_))))
                                          (let ((_g68396882_
                                                 (lambda (_g68416856_)
                                                   (if (gx#stx-pair?
                                                        _g68416856_)
                                                       (let ((_e68446859_
                                                              (gx#syntax-e
                                                               _g68416856_)))
                                                         (let ((_hd68456863_
                                                                (##car _e68446859_))
                                                               (_tl68466866_
                                                                (##cdr _e68446859_)))
                                                           ((lambda (_L6869_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L6871_)
                      (_lp6597_ _L6869_ (_cons-id6594_ _L6871_ _ids6602_)))
                    _tl68466866_
                    _hd68456863_)))
               (_g68406852_ _g68416856_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g68396882_ _L6645_)))
                                        (error '"BUG: check-duplicate-bindings"
                                               _stx4627_
                                               _rest6600_))))))
                      _tl66116642_
                      _hd66106639_)))
                 (_g66046628_ _g66066632_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g66036886_ _rest6600_)))))))
                              _lp6597_)
                            _hd6591_
                            '())))))
                  (let ((_generate-opt-primary4638_
                         (lambda (_pre6383_ _opt6385_ _tail6386_ _body6387_)
                           (let ((_g63896430_
                                  (lambda (_g63906426_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g63906426_))))
                             (let ((_g63886587_
                                    (lambda (_g63906434_)
                                      (if (gx#stx-pair? _g63906434_)
                                          (let ((_e63956437_
                                                 (gx#syntax-e _g63906434_)))
                                            (let ((_hd63966441_
                                                   (##car _e63956437_))
                                                  (_tl63976444_
                                                   (##cdr _e63956437_)))
                                              (if (gx#stx-pair/null?
                                                   _hd63966441_)
                                                  (if (fx>= (gx#stx-length
                                                             _hd63966441_)
                                                            '0)
                                                      (let ((_g28316_
                                                             (gx#syntax-split-splice
                                                              _hd63966441_
                                                              '0)))
                                                        (begin
                                                          (let ((_g28317_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (values-count _g28316_)))
                    (if (not (fx= _g28317_ 2))
                        (error "Context expects 2 values" _g28317_)))
                  (let ((_target63986447_ (values-ref _g28316_ 0))
                        (_tl64006450_ (values-ref _g28316_ 1)))
                    (if (gx#stx-null? _tl64006450_)
                        (letrec ((_loop64016453_
                                  (lambda (_hd63996457_ _pre64056460_)
                                    (if (gx#stx-pair? _hd63996457_)
                                        (let ((_e64026463_
                                               (gx#syntax-e _hd63996457_)))
                                          (let ((_lp-hd64036467_
                                                 (##car _e64026463_))
                                                (_lp-tl64046470_
                                                 (##cdr _e64026463_)))
                                            (_loop64016453_
                                             _lp-tl64046470_
                                             (cons _lp-hd64036467_
                                                   _pre64056460_))))
                                        (let ((_pre64066473_
                                               (reverse _pre64056460_)))
                                          (if (gx#stx-pair? _tl63976444_)
                                              (let ((_e64076477_
                                                     (gx#syntax-e
                                                      _tl63976444_)))
                                                (let ((_hd64086481_
                                                       (##car _e64076477_))
                                                      (_tl64096484_
                                                       (##cdr _e64076477_)))
                                                  (if (gx#stx-pair/null?
                                                       _hd64086481_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd64086481_)
                        '0)
                  (let ((_g28318_ (gx#syntax-split-splice _hd64086481_ '0)))
                    (begin
                      (let ((_g28319_ (values-count _g28318_)))
                        (if (not (fx= _g28319_ 2))
                            (error "Context expects 2 values" _g28319_)))
                      (let ((_target64106487_ (values-ref _g28318_ 0))
                            (_tl64126490_ (values-ref _g28318_ 1)))
                        (if (gx#stx-null? _tl64126490_)
                            (letrec ((_loop64136493_
                                      (lambda (_hd64116497_ _opt64176500_)
                                        (if (gx#stx-pair? _hd64116497_)
                                            (let ((_e64146503_
                                                   (gx#syntax-e _hd64116497_)))
                                              (let ((_lp-hd64156507_
                                                     (##car _e64146503_))
                                                    (_lp-tl64166510_
                                                     (##cdr _e64146503_)))
                                                (_loop64136493_
                                                 _lp-tl64166510_
                                                 (cons _lp-hd64156507_
                                                       _opt64176500_))))
                                            (let ((_opt64186513_
                                                   (reverse _opt64176500_)))
                                              (if (gx#stx-pair? _tl64096484_)
                                                  (let ((_e64196517_
                                                         (gx#syntax-e
                                                          _tl64096484_)))
                                                    (let ((_hd64206521_
                                                           (##car _e64196517_))
                                                          (_tl64216524_
                                                           (##cdr _e64196517_)))
                                                      (if (gx#stx-pair?
                                                           _tl64216524_)
                                                          (let ((_e64226527_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl64216524_)))
                    (let ((_hd64236531_ (##car _e64226527_))
                          (_tl64246534_ (##cdr _e64226527_)))
                      (if (gx#stx-null? _tl64246534_)
                          ((lambda (_L6537_ _L6539_ _L6540_ _L6541_)
                             (let ()
                               (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons (begin
                                             '#!void
                                             (foldr (lambda (_g65706575_
                                                             _g65716578_)
                                                      (cons _g65706575_
                                                            _g65716578_))
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g65726581_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g65736584_)
                       (cons _g65726581_ _g65736584_))
                     _L6539_
                     _L6540_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _L6541_))
                                           _L6537_))))
                           _hd64236531_
                           _hd64206521_
                           _opt64186513_
                           _pre64066473_)
                          (_g63896430_ _g63906434_))))
                  (_g63896430_ _g63906434_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g63896430_
                                                   _g63906434_)))))))
                              (_loop64136493_ _target64106487_ '()))
                            (_g63896430_ _g63906434_)))))
                  (_g63896430_ _g63906434_))
              (_g63896430_ _g63906434_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g63896430_ _g63906434_)))))))
                          (_loop64016453_ _target63986447_ '()))
                        (_g63896430_ _g63906434_)))))
              (_g63896430_ _g63906434_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g63896430_ _g63906434_))))
                                          (_g63896430_ _g63906434_)))))
                               (_g63886587_
                                (list _pre6383_
                                      (map car _opt6385_)
                                      _tail6386_
                                      _body6387_)))))))
                    (let ((_generate-opt-clause4641_
                           (lambda (_primary5632_ _pre5634_ _opt5635_)
                             ((letrec ((_recur5637_
                                        (lambda (_opt-rest5640_ _right5642_)
                                          (if (pair? _opt-rest5640_)
                                              (let ((_hd5644_
                                                     (car _opt-rest5640_)))
                                                (let ((_rest5647_
                                                       (cdr _opt-rest5640_)))
                                                  (let ((_g56505658_
                                                         (lambda (_g56515654_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g56515654_))))
                                                    (let ((_g56495747_
                                                           (lambda (_g56515662_)
                                                             ((lambda (_L5665_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_g56815689_
                                 (lambda (_g56825685_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g56825685_))))
                            (let ((_g56805743_
                                   (lambda (_g56825693_)
                                     ((lambda (_L5696_)
                                        (let ()
                                          (let ((_g57095717_
                                                 (lambda (_g57105713_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g57105713_))))
                                            (let ((_g57085739_
                                                   (lambda (_g57105721_)
                                                     ((lambda (_L5724_)
                                                        (let ()
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let-values)
                          (cons (cons (cons (cons _L5665_ '())
                                            (cons _L5696_ '()))
                                      '())
                                (cons _L5724_ '()))))))
              _g57105721_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g57085739_
                                               (_recur5637_
                                                _rest5647_
                                                (cons _L5665_
                                                      _right5642_)))))))
                                      _g56825693_))))
                              (_g56805743_ (cdr _hd5644_))))))
                      _g56515662_))))
              (_g56495747_ (car _hd5644_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g57515788_
                                                     (lambda (_g57525784_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g57525784_))))
                                                (let ((_g57505930_
                                                       (lambda (_g57525792_)
                                                         (if (gx#stx-pair?
                                                              _g57525792_)
                                                             (let ((_e57565795_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g57525792_)))
                       (let ((_hd57575799_ (##car _e57565795_))
                             (_tl57585802_ (##cdr _e57565795_)))
                         (if (gx#stx-pair/null? _hd57575799_)
                             (if (fx>= (gx#stx-length _hd57575799_) '0)
                                 (let ((_g28312_
                                        (gx#syntax-split-splice
                                         _hd57575799_
                                         '0)))
                                   (begin
                                     (let ((_g28313_ (values-count _g28312_)))
                                       (if (not (fx= _g28313_ 2))
                                           (error "Context expects 2 values"
                                                  _g28313_)))
                                     (let ((_target57595805_
                                            (values-ref _g28312_ 0))
                                           (_tl57615808_
                                            (values-ref _g28312_ 1)))
                                       (if (gx#stx-null? _tl57615808_)
                                           (letrec ((_loop57625811_
                                                     (lambda (_hd57605815_
                                                              _pre57665818_)
                                                       (if (gx#stx-pair?
                                                            _hd57605815_)
                                                           (let ((_e57635821_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd57605815_)))
                     (let ((_lp-hd57645825_ (##car _e57635821_))
                           (_lp-tl57655828_ (##cdr _e57635821_)))
                       (_loop57625811_
                        _lp-tl57655828_
                        (cons _lp-hd57645825_ _pre57665818_))))
                   (let ((_pre57675831_ (reverse _pre57665818_)))
                     (if (gx#stx-pair? _tl57585802_)
                         (let ((_e57685835_ (gx#syntax-e _tl57585802_)))
                           (let ((_hd57695839_ (##car _e57685835_))
                                 (_tl57705842_ (##cdr _e57685835_)))
                             (if (gx#stx-pair/null? _hd57695839_)
                                 (if (fx>= (gx#stx-length _hd57695839_) '0)
                                     (let ((_g28314_
                                            (gx#syntax-split-splice
                                             _hd57695839_
                                             '0)))
                                       (begin
                                         (let ((_g28315_
                                                (values-count _g28314_)))
                                           (if (not (fx= _g28315_ 2))
                                               (error "Context expects 2 values"
                                                      _g28315_)))
                                         (let ((_target57715845_
                                                (values-ref _g28314_ 0))
                                               (_tl57735848_
                                                (values-ref _g28314_ 1)))
                                           (if (gx#stx-null? _tl57735848_)
                                               (letrec ((_loop57745851_
                                                         (lambda (_hd57725855_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _opt57785858_)
                   (if (gx#stx-pair? _hd57725855_)
                       (let ((_e57755861_ (gx#syntax-e _hd57725855_)))
                         (let ((_lp-hd57765865_ (##car _e57755861_))
                               (_lp-tl57775868_ (##cdr _e57755861_)))
                           (_loop57745851_
                            _lp-tl57775868_
                            (cons _lp-hd57765865_ _opt57785858_))))
                       (let ((_opt57795871_ (reverse _opt57785858_)))
                         (if (gx#stx-pair? _tl57705842_)
                             (let ((_e57805875_ (gx#syntax-e _tl57705842_)))
                               (let ((_hd57815879_ (##car _e57805875_))
                                     (_tl57825882_ (##cdr _e57805875_)))
                                 (if (gx#stx-null? _tl57825882_)
                                     ((lambda (_L5885_ _L5887_ _L5888_)
                                        (let ()
                                          (gx#stx-wrap-source
                                           (cons _L5885_
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g59135918_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g59145921_)
                    (cons _g59135918_ _g59145921_))
                  (begin
                    '#!void
                    (foldr (lambda (_g59155924_ _g59165927_)
                             (cons _g59155924_ _g59165927_))
                           '()
                           _L5887_))
                  _L5888_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _stx4627_))))
                                      _hd57815879_
                                      _opt57795871_
                                      _pre57675831_)
                                     (_g57515788_ _g57525792_))))
                             (_g57515788_ _g57525792_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop57745851_
                                                  _target57715845_
                                                  '()))
                                               (_g57515788_ _g57525792_)))))
                                     (_g57515788_ _g57525792_))
                                 (_g57515788_ _g57525792_))))
                         (_g57515788_ _g57525792_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop57625811_
                                              _target57595805_
                                              '()))
                                           (_g57515788_ _g57525792_)))))
                                 (_g57515788_ _g57525792_))
                             (_g57515788_ _g57525792_))))
                     (_g57515788_ _g57525792_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g57505930_
                                                   (list _pre5634_
                                                         (reverse _right5642_)
                                                         _primary5632_))))))))
                                _recur5637_)
                              _opt5635_
                              '()))))
                      (let ((_generate-kw-primary4642_
                             (lambda (_kwvar5279_
                                      _kwargs5281_
                                      _args5282_
                                      _body5283_)
                               (let ((_absent5285_ (gx#genident 'absent)))
                                 (letrec ((_make-body5287_
                                           (lambda (_kwargs5451_ _body5453_)
                                             (if (pair? _kwargs5451_)
                                                 (let ((_next5455_
                                                        (car _kwargs5451_)))
                                                   (let ((_rest5458_
                                                          (cdr _kwargs5451_)))
                                                     (let ((_key5461_
                                                            (car _next5455_)))
                                                       (let ((_var5464_
                                                              (cadr _next5455_)))
                                                         (let ((_default5467_
                                                                (caddr _next5455_)))
                                                           (let ()
                                                             (let ((_g54725507_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g54735503_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g54735503_))))
                       (let ((_g54715628_
                              (lambda (_g54735511_)
                                (if (gx#stx-pair? _g54735511_)
                                    (let ((_e54815514_
                                           (gx#syntax-e _g54735511_)))
                                      (let ((_hd54825518_ (##car _e54815514_))
                                            (_tl54835521_ (##cdr _e54815514_)))
                                        (if (gx#stx-pair? _tl54835521_)
                                            (let ((_e54845524_
                                                   (gx#syntax-e _tl54835521_)))
                                              (let ((_hd54855528_
                                                     (##car _e54845524_))
                                                    (_tl54865531_
                                                     (##cdr _e54845524_)))
                                                (if (gx#stx-pair? _tl54865531_)
                                                    (let ((_e54875534_
                                                           (gx#syntax-e
                                                            _tl54865531_)))
                                                      (let ((_hd54885538_
                                                             (##car _e54875534_))
                                                            (_tl54895541_
                                                             (##cdr _e54875534_)))
                                                        (if (gx#stx-pair?
                                                             _tl54895541_)
                                                            (let ((_e54905544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl54895541_)))
                      (let ((_hd54915548_ (##car _e54905544_))
                            (_tl54925551_ (##cdr _e54905544_)))
                        (if (gx#stx-pair? _tl54925551_)
                            (let ((_e54935554_ (gx#syntax-e _tl54925551_)))
                              (let ((_hd54945558_ (##car _e54935554_))
                                    (_tl54955561_ (##cdr _e54935554_)))
                                (if (gx#stx-pair? _tl54955561_)
                                    (let ((_e54965564_
                                           (gx#syntax-e _tl54955561_)))
                                      (let ((_hd54975568_ (##car _e54965564_))
                                            (_tl54985571_ (##cdr _e54965564_)))
                                        (if (gx#stx-pair? _tl54985571_)
                                            (let ((_e54995574_
                                                   (gx#syntax-e _tl54985571_)))
                                              (let ((_hd55005578_
                                                     (##car _e54995574_))
                                                    (_tl55015581_
                                                     (##cdr _e54995574_)))
                                                (if (gx#stx-null? _tl55015581_)
                                                    ((lambda (_L5584_
                                                              _L5586_
                                                              _L5587_
                                                              _L5588_
                                                              _L5589_
                                                              _L5590_
                                                              _L5591_)
                                                       (let ()
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'let-values)
                                                               (cons (cons (cons (cons _L5588_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                               '())
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'hash-ref)
                                                     (cons _L5591_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote)
                               (cons _L5590_ '()))
                         (cons _L5584_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())
                             (cons (cons (gx#datum->syntax '#f 'let-values)
                                         (cons (cons (cons (cons _L5589_ '())
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'if)
                               (cons (cons (gx#datum->syntax '#f 'eq?)
                                           (cons _L5588_ (cons _L5584_ '())))
                                     (cons _L5587_ (cons _L5588_ '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (cons _L5586_ '())))
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd55005578_
                                                     _hd54975568_
                                                     _hd54945558_
                                                     _hd54915548_
                                                     _hd54885538_
                                                     _hd54855528_
                                                     _hd54825518_)
                                                    (_g54725507_
                                                     _g54735511_))))
                                            (_g54725507_ _g54735511_))))
                                    (_g54725507_ _g54735511_))))
                            (_g54725507_ _g54735511_))))
                    (_g54725507_ _g54735511_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g54725507_
                                                     _g54735511_))))
                                            (_g54725507_ _g54735511_))))
                                    (_g54725507_ _g54735511_)))))
                         (_g54715628_
                          (list _kwvar5279_
                                _key5461_
                                _var5464_
                                (gx#genident _var5464_)
                                _default5467_
                                (_make-body5287_ _rest5458_ _body5453_)
                                _absent5285_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons 'begin _body5453_)))))
                                   (let ((_g52895297_
                                          (lambda (_g52905293_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g52905293_))))
                                     (let ((_g52885447_
                                            (lambda (_g52905301_)
                                              ((lambda (_L5304_)
                                                 (let ()
                                                   (let ((_g53175325_
                                                          (lambda (_g53185321_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g53185321_))))
                                                     (let ((_g53165443_
                                                            (lambda (_g53185329_)
                                                              ((lambda (_L5332_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((_g53455353_
                                  (lambda (_g53465349_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g53465349_))))
                             (let ((_g53445439_
                                    (lambda (_g53465357_)
                                      ((lambda (_L5360_)
                                         (let ()
                                           (let ((_g53735381_
                                                  (lambda (_g53745377_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g53745377_))))
                                             (let ((_g53725435_
                                                    (lambda (_g53745385_)
                                                      ((lambda (_L5388_)
                                                         (let ()
                                                           (let ((_g54015409_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g54025405_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g54025405_))))
                     (let ((_g54005431_
                            (lambda (_g54025413_)
                              ((lambda (_L5416_)
                                 (let ()
                                   (let ()
                                     (cons (gx#datum->syntax '#f 'let-values)
                                           (cons (cons (cons (cons _L5416_ '())
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'make-vector)
                                 (cons '0 '()))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _L5388_ '()))))))
                               _g54025413_))))
                       (_g54005431_ _absent5285_)))))
               _g53745385_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g53725435_
                                                (gx#stx-wrap-source
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons (cons _L5304_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L5332_)
                     (cons _L5360_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (gx#stx-source
                                                  _stx4627_)))))))
                                       _g53465357_))))
                               (_g53445439_
                                (_make-body5287_ _kwargs5281_ _body5283_))))))
                       _g53185329_))))
               (_g53165443_ _args5282_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g52905301_))))
                                       (_g52885447_ _kwvar5279_))))))))
                        (let ((_generate-kw-table4644_
                               (lambda (_kws5166_)
                                 ((letrec ((_rehash5169_
                                            (lambda (_pht5172_)
                                              ((letrec ((_lp5175_
                                                         (lambda (_rest5178_)
                                                           (if (pair? _rest5178_)
                                                               (let ((_key5181_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _rest5178_)))
                         (let ((_rest5184_ (cdr _rest5178_)))
                           (let ((_pos5187_
                                  (fxmodulo
                                   (keyword-hash _key5181_)
                                   (vector-length _pht5172_))))
                             (let ()
                               (if (vector-ref _pht5172_ _pos5187_)
                                   (if (fx< (vector-length _pht5172_) '8192)
                                       (_rehash5169_
                                        (make-vector
                                         (fx1+ (* '2
                                                  (vector-length _pht5172_)))
                                         '#f))
                                       (error '"Unresolvable keyword collision"
                                              _kws5166_))
                                   (begin
                                     (vector-set!
                                      _pht5172_
                                      _pos5187_
                                      _key5181_)
                                     (_lp5175_ _rest5184_)))))))
                       _pht5172_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _lp5175_)
                                               _kws5166_))))
                                    _rehash5169_)
                                  (make-vector (length _kws5166_) '#f)))))
                          (let ((_opt-lambda-split4633_
                                 (lambda (_hd7484_)
                                   ((letrec ((_lp7487_
                                              (lambda (_rest7490_
                                                       _pre7492_
                                                       _opt7493_)
                                                (let ((_g74967508_
                                                       (lambda (_g74977504_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g74977504_))))
                                                  (let ((_g74957519_
                                                         (lambda (_g74977512_)
                                                           ((lambda ()
                                                              (values (reverse _pre7492_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (reverse _opt7493_)
                              (if (gx#identifier? _rest7490_)
                                  (_generate-bind4636_ _rest7490_)
                                  _rest7490_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g74947628_
                                                           (lambda (_g74977523_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g74977523_)
                         (let ((_e75007526_ (gx#syntax-e _g74977523_)))
                           (let ((_hd75017530_ (##car _e75007526_))
                                 (_tl75027533_ (##cdr _e75007526_)))
                             ((lambda (_L7536_ _L7538_)
                                (let ((_g75547569_
                                       (lambda (_g75557565_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g75557565_))))
                                  (let ((_g75537580_
                                         (lambda (_g75557573_)
                                           ((lambda ()
                                              (_lp7487_
                                               _L7536_
                                               (cons (_generate-bind4636_
                                                      _L7538_)
                                                     _pre7492_)
                                               _opt7493_))))))
                                    (let ((_g75527624_
                                           (lambda (_g75557584_)
                                             (if (gx#stx-pair? _g75557584_)
                                                 (let ((_e75587587_
                                                        (gx#syntax-e
                                                         _g75557584_)))
                                                   (let ((_hd75597591_
                                                          (##car _e75587587_))
                                                         (_tl75607594_
                                                          (##cdr _e75587587_)))
                                                     (if (gx#stx-pair?
                                                          _tl75607594_)
                                                         (let ((_e75617597_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl75607594_)))
                   (let ((_hd75627601_ (##car _e75617597_))
                         (_tl75637604_ (##cdr _e75617597_)))
                     (if (gx#stx-null? _tl75637604_)
                         ((lambda (_L7607_ _L7609_)
                            (_lp7487_
                             _L7536_
                             _pre7492_
                             (cons (cons (_generate-bind4636_ _L7609_) _L7607_)
                                   _opt7493_)))
                          _hd75627601_
                          _hd75597591_)
                         (_g75537580_ _g75557584_))))
                 (_g75537580_ _g75557584_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g75537580_ _g75557584_)))))
                                      (_g75527624_ _L7538_)))))
                              _tl75027533_
                              _hd75017530_)))
                         (_g74957519_ _g74977523_)))))
              (_g74947628_ _rest7490_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _lp7487_)
                                    _hd7484_
                                    '()
                                    '()))))
                            (let ((_kw-lambda-split4635_
                                   (lambda (_hd6897_)
                                     ((letrec ((_lp6900_
                                                (lambda (_rest6903_
                                                         _kwvar6905_
                                                         _kwargs6906_
                                                         _args6907_)
                                                  (let ((_g69126941_
                                                         (lambda (_g69136937_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g69136937_))))
                                                    (let ((_g69116952_
                                                           (lambda (_g69136945_)
                                                             ((lambda ()
                                                                (values _kwvar6905_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse _kwargs6906_)
                                (foldl cons _rest6903_ _args6907_)))))))
              (let ((_g69106986_
                     (lambda (_g69136956_)
                       (if (gx#stx-pair? _g69136956_)
                           (let ((_e69336959_ (gx#syntax-e _g69136956_)))
                             (let ((_hd69346963_ (##car _e69336959_))
                                   (_tl69356966_ (##cdr _e69336959_)))
                               ((lambda (_L6969_ _L6971_)
                                  (_lp6900_
                                   _L6969_
                                   _kwvar6905_
                                   _kwargs6906_
                                   (cons _L6971_ _args6907_)))
                                _tl69356966_
                                _hd69346963_)))
                           (_g69116952_ _g69136956_)))))
                (let ((_g69097028_
                       (lambda (_g69136990_)
                         (if (gx#stx-pair? _g69136990_)
                             (let ((_e69256993_ (gx#syntax-e _g69136990_)))
                               (let ((_hd69266997_ (##car _e69256993_))
                                     (_tl69277000_ (##cdr _e69256993_)))
                                 (if (gx#stx-datum? _hd69266997_)
                                     (if (equal? (gx#stx-e _hd69266997_)
                                                 '#!key)
                                         (if (gx#stx-pair? _tl69277000_)
                                             (let ((_e69287003_
                                                    (gx#syntax-e
                                                     _tl69277000_)))
                                               (let ((_hd69297007_
                                                      (##car _e69287003_))
                                                     (_tl69307010_
                                                      (##cdr _e69287003_)))
                                                 ((lambda (_L7013_ _L7015_)
                                                    (if _kwvar6905_
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; duplicate #!key argument"
                                                         _stx4627_
                                                         _hd6897_
                                                         _L7015_)
                                                        (_lp6900_
                                                         _L7013_
                                                         (_generate-bind4636_
                                                          _L7015_)
                                                         _kwargs6906_
                                                         _args6907_)))
                                                  _tl69307010_
                                                  _hd69297007_)))
                                             (_g69106986_ _g69136990_))
                                         (_g69106986_ _g69136990_))
                                     (_g69106986_ _g69136990_))))
                             (_g69106986_ _g69136990_)))))
                  (let ((_g69087154_
                         (lambda (_g69137032_)
                           (if (gx#stx-pair? _g69137032_)
                               (let ((_e69177035_ (gx#syntax-e _g69137032_)))
                                 (let ((_hd69187039_ (##car _e69177035_))
                                       (_tl69197042_ (##cdr _e69177035_)))
                                   (if (gx#stx-pair? _tl69197042_)
                                       (let ((_e69207045_
                                              (gx#syntax-e _tl69197042_)))
                                         (let ((_hd69217049_
                                                (##car _e69207045_))
                                               (_tl69227052_
                                                (##cdr _e69207045_)))
                                           ((lambda (_L7055_ _L7057_ _L7058_)
                                              (if (gx#stx-keyword? _L7058_)
                                                  (let ((_key7072_
                                                         (gx#stx-e _L7058_)))
                                                    (if (find (lambda (_kwarg7075_)
                                                                (eq? _key7072_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _kwarg7075_)))
                      _kwargs6906_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; duplicate keyword argument"
                 _stx4627_
                 _hd6897_
                 _key7072_)
                (let ((_g70797094_
                       (lambda (_g70807090_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g70807090_))))
                  (let ((_g70787105_
                         (lambda (_g70807098_)
                           ((lambda ()
                              (_lp6900_
                               _L7055_
                               _kwvar6905_
                               (cons (list _key7072_
                                           (_generate-bind4636_ _L7057_)
                                           (cons (gx#datum->syntax '#f 'error)
                                                 (cons '"Missing required keyword argument"
                                                       (cons _L7058_ '()))))
                                     _kwargs6906_)
                               _args6907_))))))
                    (let ((_g70777150_
                           (lambda (_g70807109_)
                             (if (gx#stx-pair? _g70807109_)
                                 (let ((_e70837112_ (gx#syntax-e _g70807109_)))
                                   (let ((_hd70847116_ (##car _e70837112_))
                                         (_tl70857119_ (##cdr _e70837112_)))
                                     (if (gx#stx-pair? _tl70857119_)
                                         (let ((_e70867122_
                                                (gx#syntax-e _tl70857119_)))
                                           (let ((_hd70877126_
                                                  (##car _e70867122_))
                                                 (_tl70887129_
                                                  (##cdr _e70867122_)))
                                             (if (gx#stx-null? _tl70887129_)
                                                 ((lambda (_L7132_ _L7134_)
                                                    (_lp6900_
                                                     _L7055_
                                                     _kwvar6905_
                                                     (cons (list _key7072_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_generate-bind4636_ _L7134_)
                         _L7132_)
                   _kwargs6906_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _args6907_))
                                                  _hd70877126_
                                                  _hd70847116_)
                                                 (_g70787105_ _g70807109_))))
                                         (_g70787105_ _g70807109_))))
                                 (_g70787105_ _g70807109_)))))
                      (_g70777150_ _L7057_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g69097028_ _g69137032_)))
                                            _tl69227052_
                                            _hd69217049_
                                            _hd69187039_)))
                                       (_g69097028_ _g69137032_))))
                               (_g69097028_ _g69137032_)))))
                    (_g69087154_ _rest6903_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _lp6900_)
                                      _hd6897_
                                      '#f
                                      '()
                                      '()))))
                              (let ((_generate-opt-dispatch*4640_
                                     (lambda (_primary5934_
                                              _pre5936_
                                              _opt5937_
                                              _tail5938_)
                                       ((letrec ((_recur5940_
                                                  (lambda (_opt-rest5943_
                                                           _right5945_)
                                                    (if (pair? _opt-rest5943_)
                                                        (let ((_hd5947_
                                                               (caar _opt-rest5943_)))
                                                          (let ((_rest5950_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cdr _opt-rest5943_)))
                    (let ((_right*5953_ (cons _hd5947_ _right5945_)))
                      (let ((_g59565973_
                             (lambda (_g59575969_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g59575969_))))
                        (let ((_g59556156_
                               (lambda (_g59575977_)
                                 (if (gx#stx-pair/null? _g59575977_)
                                     (if (fx>= (gx#stx-length _g59575977_) '0)
                                         (let ((_g28304_
                                                (gx#syntax-split-splice
                                                 _g59575977_
                                                 '0)))
                                           (begin
                                             (let ((_g28305_
                                                    (values-count _g28304_)))
                                               (if (not (fx= _g28305_ 2))
                                                   (error "Context expects 2 values"
                                                          _g28305_)))
                                             (let ((_target59595980_
                                                    (values-ref _g28304_ 0))
                                                   (_tl59615983_
                                                    (values-ref _g28304_ 1)))
                                               (if (gx#stx-null? _tl59615983_)
                                                   (letrec ((_loop59625986_
                                                             (lambda (_hd59605990_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _pre-bind59665993_)
                       (if (gx#stx-pair? _hd59605990_)
                           (let ((_e59635996_ (gx#syntax-e _hd59605990_)))
                             (let ((_lp-hd59646000_ (##car _e59635996_))
                                   (_lp-tl59656003_ (##cdr _e59635996_)))
                               (_loop59625986_
                                _lp-tl59656003_
                                (cons _lp-hd59646000_ _pre-bind59665993_))))
                           (let ((_pre-bind59676006_
                                  (reverse _pre-bind59665993_)))
                             ((lambda (_L6010_)
                                (let ()
                                  (let ((_g60316048_
                                         (lambda (_g60326044_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g60326044_))))
                                    (let ((_g60306152_
                                           (lambda (_g60326052_)
                                             (if (gx#stx-pair/null?
                                                  _g60326052_)
                                                 (if (fx>= (gx#stx-length
                                                            _g60326052_)
                                                           '0)
                                                     (let ((_g28306_
                                                            (gx#syntax-split-splice
                                                             _g60326052_
                                                             '0)))
                                                       (begin
                                                         (let ((_g28307_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g28306_)))
                   (if (not (fx= _g28307_ 2))
                       (error "Context expects 2 values" _g28307_)))
                 (let ((_target60346055_ (values-ref _g28306_ 0))
                       (_tl60366058_ (values-ref _g28306_ 1)))
                   (if (gx#stx-null? _tl60366058_)
                       (letrec ((_loop60376061_
                                 (lambda (_hd60356065_ _opt-bind60416068_)
                                   (if (gx#stx-pair? _hd60356065_)
                                       (let ((_e60386071_
                                              (gx#syntax-e _hd60356065_)))
                                         (let ((_lp-hd60396075_
                                                (##car _e60386071_))
                                               (_lp-tl60406078_
                                                (##cdr _e60386071_)))
                                           (_loop60376061_
                                            _lp-tl60406078_
                                            (cons _lp-hd60396075_
                                                  _opt-bind60416068_))))
                                       (let ((_opt-bind60426081_
                                              (reverse _opt-bind60416068_)))
                                         ((lambda (_L6085_)
                                            (let ()
                                              (let ((_g61026110_
                                                     (lambda (_g61036106_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g61036106_))))
                                                (let ((_g61016148_
                                                       (lambda (_g61036114_)
                                                         ((lambda (_L6117_)
                                                            (let ()
                                                              (let ()
                                                                (cons (list (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '#!void
                                      (foldr (lambda (_g61316136_ _g61326139_)
                                               (cons _g61316136_ _g61326139_))
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g61336142_
                                                               _g61346145_)
                                                        (cons _g61336142_
                                                              _g61346145_))
                                                      (cons _L6117_ '())
                                                      _L6085_))
                                             _L6010_))
                                    (_generate-opt-clause4641_
                                     _primary5934_
                                     (foldr cons
                                            (reverse _right*5953_)
                                            _pre5936_)
                                     _rest5950_))
                              (_recur5940_ _rest5950_ _right*5953_)))))
                  _g61036114_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g61016148_ _hd5947_)))))
                                          _opt-bind60426081_))))))
                         (_loop60376061_ _target60346055_ '()))
                       (_g60316048_ _g60326052_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g60316048_ _g60326052_))
                                                 (_g60316048_ _g60326052_)))))
                                      (_g60306152_ (reverse _right5945_))))))
                              _pre-bind59676006_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop59625986_
                                                      _target59595980_
                                                      '()))
                                                   (_g59565973_
                                                    _g59575977_)))))
                                         (_g59565973_ _g59575977_))
                                     (_g59565973_ _g59575977_)))))
                          (_g59556156_ _pre5936_))))))
                (if (gx#stx-null? _tail5938_)
                    '()
                    (let ((_g61606201_
                           (lambda (_g61616197_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g61616197_))))
                      (let ((_g61596373_
                             (lambda (_g61616205_)
                               (if (gx#stx-pair? _g61616205_)
                                   (let ((_e61666208_
                                          (gx#syntax-e _g61616205_)))
                                     (let ((_hd61676212_ (##car _e61666208_))
                                           (_tl61686215_ (##cdr _e61666208_)))
                                       (if (gx#stx-pair/null? _hd61676212_)
                                           (if (fx>= (gx#stx-length
                                                      _hd61676212_)
                                                     '0)
                                               (let ((_g28308_
                                                      (gx#syntax-split-splice
                                                       _hd61676212_
                                                       '0)))
                                                 (begin
                                                   (let ((_g28309_
                                                          (values-count
                                                           _g28308_)))
                                                     (if (not (fx= _g28309_ 2))
                                                         (error "Context expects 2 values"
                                                                _g28309_)))
                                                   (let ((_target61696218_
                                                          (values-ref
                                                           _g28308_
                                                           0))
                                                         (_tl61716221_
                                                          (values-ref
                                                           _g28308_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl61716221_)
                                                         (letrec ((_loop61726224_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd61706228_ _pre61766231_)
                             (if (gx#stx-pair? _hd61706228_)
                                 (let ((_e61736234_
                                        (gx#syntax-e _hd61706228_)))
                                   (let ((_lp-hd61746238_ (##car _e61736234_))
                                         (_lp-tl61756241_ (##cdr _e61736234_)))
                                     (_loop61726224_
                                      _lp-tl61756241_
                                      (cons _lp-hd61746238_ _pre61766231_))))
                                 (let ((_pre61776244_ (reverse _pre61766231_)))
                                   (if (gx#stx-pair? _tl61686215_)
                                       (let ((_e61786248_
                                              (gx#syntax-e _tl61686215_)))
                                         (let ((_hd61796252_
                                                (##car _e61786248_))
                                               (_tl61806255_
                                                (##cdr _e61786248_)))
                                           (if (gx#stx-pair/null? _hd61796252_)
                                               (if (fx>= (gx#stx-length
                                                          _hd61796252_)
                                                         '0)
                                                   (let ((_g28310_
                                                          (gx#syntax-split-splice
                                                           _hd61796252_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28311_
                                                              (values-count
                                                               _g28310_)))
                                                         (if (not (fx= _g28311_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28311_)))
               (let ((_target61816258_ (values-ref _g28310_ 0))
                     (_tl61836261_ (values-ref _g28310_ 1)))
                 (if (gx#stx-null? _tl61836261_)
                     (letrec ((_loop61846264_
                               (lambda (_hd61826268_ _opt61886271_)
                                 (if (gx#stx-pair? _hd61826268_)
                                     (let ((_e61856274_
                                            (gx#syntax-e _hd61826268_)))
                                       (let ((_lp-hd61866278_
                                              (##car _e61856274_))
                                             (_lp-tl61876281_
                                              (##cdr _e61856274_)))
                                         (_loop61846264_
                                          _lp-tl61876281_
                                          (cons _lp-hd61866278_
                                                _opt61886271_))))
                                     (let ((_opt61896284_
                                            (reverse _opt61886271_)))
                                       (if (gx#stx-pair? _tl61806255_)
                                           (let ((_e61906288_
                                                  (gx#syntax-e _tl61806255_)))
                                             (let ((_hd61916292_
                                                    (##car _e61906288_))
                                                   (_tl61926295_
                                                    (##cdr _e61906288_)))
                                               (if (gx#stx-pair? _tl61926295_)
                                                   (let ((_e61936298_
                                                          (gx#syntax-e
                                                           _tl61926295_)))
                                                     (let ((_hd61946302_
                                                            (##car _e61936298_))
                                                           (_tl61956305_
                                                            (##cdr _e61936298_)))
                                                       (if (gx#stx-null?
                                                            _tl61956305_)
                                                           ((lambda (_L6308_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L6310_
                             _L6311_
                             _L6312_)
                      (let ()
                        (list (list (begin
                                      '#!void
                                      (foldr (lambda (_g63406345_ _g63416348_)
                                               (cons _g63406345_ _g63416348_))
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g63426351_
                                                               _g63436354_)
                                                        (cons _g63426351_
                                                              _g63436354_))
                                                      _L6310_
                                                      _L6311_))
                                             _L6312_))
                                    (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'apply)
                                           (cons _L6308_
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g63566361_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g63576364_)
                    (cons _g63566361_ _g63576364_))
                  (begin
                    '#!void
                    (foldr (lambda (_g63586367_ _g63596370_)
                             (cons _g63586367_ _g63596370_))
                           (cons _L6310_ '())
                           _L6311_))
                  _L6312_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _stx4627_))))))
                    _hd61946302_
                    _hd61916292_
                    _opt61896284_
                    _pre61776244_)
                   (_g61606201_ _g61616205_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g61606201_ _g61616205_))))
                                           (_g61606201_ _g61616205_)))))))
                       (_loop61846264_ _target61816258_ '()))
                     (_g61606201_ _g61616205_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g61606201_ _g61616205_))
                                               (_g61606201_ _g61616205_))))
                                       (_g61606201_ _g61616205_)))))))
                   (_loop61726224_ _target61696218_ '()))
                 (_g61606201_ _g61616205_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g61606201_ _g61616205_))
                                           (_g61606201_ _g61616205_))))
                                   (_g61606201_ _g61616205_)))))
                        (_g61596373_
                         (list _pre5936_
                               (reverse _right5945_)
                               _tail5938_
                               _primary5934_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _recur5940_)
                                        _opt5937_
                                        '()))))
                                (let ((_generate-kw-dispatch4643_
                                       (lambda (_primary5192_
                                                _kwargs5194_
                                                _strict?5195_)
                                         (let ((_g51975216_
                                                (lambda (_g51985212_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g51985212_))))
                                           (let ((_g51965275_
                                                  (lambda (_g51985220_)
                                                    (if (gx#stx-pair?
                                                         _g51985220_)
                                                        (let ((_e52025223_
                                                               (gx#syntax-e
                                                                _g51985220_)))
                                                          (let ((_hd52035227_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e52025223_))
                        (_tl52045230_ (##cdr _e52025223_)))
                    (if (gx#stx-pair? _tl52045230_)
                        (let ((_e52055233_ (gx#syntax-e _tl52045230_)))
                          (let ((_hd52065237_ (##car _e52055233_))
                                (_tl52075240_ (##cdr _e52055233_)))
                            (if (gx#stx-pair? _tl52075240_)
                                (let ((_e52085243_ (gx#syntax-e _tl52075240_)))
                                  (let ((_hd52095247_ (##car _e52085243_))
                                        (_tl52105250_ (##cdr _e52085243_)))
                                    (if (gx#stx-null? _tl52105250_)
                                        ((lambda (_L5253_ _L5255_ _L5256_)
                                           (let ()
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda%)
                                                   (cons _L5253_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'apply)
                             (cons (gx#datum->syntax '#f 'keyword-dispatch)
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _L5256_ '()))
                                         (cons _L5255_ (cons _L5253_ '())))))
                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _hd52095247_
                                         _hd52065237_
                                         _hd52035227_)
                                        (_g51975216_ _g51985220_))))
                                (_g51975216_ _g51985220_))))
                        (_g51975216_ _g51985220_))))
                (_g51975216_ _g51985220_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g51965275_
                                              (list (if _strict?5195_
                                                        (_generate-kw-table4644_
                                                         (map car
                                                              _kwargs5194_))
                                                        '#f)
                                                    _primary5192_
                                                    (gx#genident 'args))))))))
                                  (let ((_generate-opt-dispatch4639_
                                         (lambda (_primary6377_
                                                  _pre6379_
                                                  _opt6380_
                                                  _tail6381_)
                                           (cons (list _pre6379_
                                                       (_generate-opt-clause4641_
                                                        _primary6377_
                                                        _pre6379_
                                                        _opt6380_))
                                                 (_generate-opt-dispatch*4640_
                                                  _primary6377_
                                                  _pre6379_
                                                  _opt6380_
                                                  _tail6381_)))))
                                    (let ((_g46484679_
                                           (lambda (_g46494675_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g46494675_))))
                                      (let ((_g46474892_
                                             (lambda (_g46494683_)
                                               (if (gx#stx-pair? _g46494683_)
                                                   (let ((_e46684686_
                                                          (gx#syntax-e
                                                           _g46494683_)))
                                                     (let ((_hd46694690_
                                                            (##car _e46684686_))
                                                           (_tl46704693_
                                                            (##cdr _e46684686_)))
                                                       (if (gx#stx-pair?
                                                            _tl46704693_)
                                                           (let ((_e46714696_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl46704693_)))
                     (let ((_hd46724700_ (##car _e46714696_))
                           (_tl46734703_ (##cdr _e46714696_)))
                       ((lambda (_L4706_ _L4708_)
                          (if (_kw-lambda?4634_ _L4708_)
                              (let ((_g47244731_
                                     (lambda (_g47254727_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g47254727_))))
                                (let ((_g47234888_
                                       (lambda (_g47254735_)
                                         ((lambda ()
                                            (let ()
                                              (let ((_g28298_
                                                     (_kw-lambda-split4635_
                                                      _L4708_)))
                                                (begin
                                                  (let ((_g28299_
                                                         (values-count
                                                          _g28298_)))
                                                    (if (not (fx= _g28299_ 3))
                                                        (error "Context expects 3 values"
                                                               _g28299_)))
                                                  (let ((_key4744_
                                                         (values-ref
                                                          _g28298_
                                                          0))
                                                        (_kwargs4746_
                                                         (values-ref
                                                          _g28298_
                                                          1))
                                                        (_args4747_
                                                         (values-ref
                                                          _g28298_
                                                          2)))
                                                    (let ((_g47494757_
                                                           (lambda (_g47504753_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g47504753_))))
                                                      (let ((_g47484880_
                                                             (lambda (_g47504761_)
                                                               ((lambda (_L4764_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let ((_g47824790_
                                   (lambda (_g47834786_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g47834786_))))
                              (let ((_g47814876_
                                     (lambda (_g47834794_)
                                       ((lambda (_L4797_)
                                          (let ()
                                            (let ((_g48104818_
                                                   (lambda (_g48114814_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g48114814_))))
                                              (let ((_g48094872_
                                                     (lambda (_g48114822_)
                                                       ((lambda (_L4825_)
                                                          (let ()
                                                            (let ((_g48384846_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g48394842_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g48394842_))))
                      (let ((_g48374868_
                             (lambda (_g48394850_)
                               ((lambda (_L4853_)
                                  (let ()
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'let-values)
                                            (cons (cons (cons (cons _L4797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons _L4825_ '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _L4853_ '()))))))
                                _g48394850_))))
                        (_g48374868_
                         (gx#stx-wrap-source
                          (_generate-kw-dispatch4643_
                           _L4797_
                           _kwargs4746_
                           (not _key4744_))
                          (gx#stx-source _stx4627_)))))))
                _g48114822_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g48094872_
                                                 (gx#stx-wrap-source
                                                  (_generate-kw-primary4642_
                                                   _L4764_
                                                   _kwargs4746_
                                                   _args4747_
                                                   _L4706_)
                                                  (gx#stx-source
                                                   _stx4627_)))))))
                                        _g47834794_))))
                                (_g47814876_ (gx#genident 'kw-lambda))))))
                        _g47504761_))))
                (_g47484880_
                 (let ((_$e4884_ _key4744_))
                   (if _$e4884_ _$e4884_ (gx#genident 'key)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_g47234888_
                                   (_check-duplicate-bindings4637_ _L4708_))))
                              (_g46484679_ _g46494683_)))
                        _tl46734703_
                        _hd46724700_)))
                   (_g46484679_ _g46494683_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g46484679_
                                                    _g46494683_)))))
                                        (let ((_g46465120_
                                               (lambda (_g46494896_)
                                                 (if (gx#stx-pair? _g46494896_)
                                                     (let ((_e46604899_
                                                            (gx#syntax-e
                                                             _g46494896_)))
                                                       (let ((_hd46614903_
                                                              (##car _e46604899_))
                                                             (_tl46624906_
                                                              (##cdr _e46604899_)))
                                                         (if (gx#stx-pair?
                                                              _tl46624906_)
                                                             (let ((_e46634909_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl46624906_)))
                       (let ((_hd46644913_ (##car _e46634909_))
                             (_tl46654916_ (##cdr _e46634909_)))
                         ((lambda (_L4919_ _L4921_)
                            (if (_opt-lambda?4632_ _L4921_)
                                (let ((_g28300_
                                       (_opt-lambda-split4633_ _L4921_)))
                                  (begin
                                    (let ((_g28301_ (values-count _g28300_)))
                                      (if (not (fx= _g28301_ 3))
                                          (error "Context expects 3 values"
                                                 _g28301_)))
                                    (let ((_pre4934_ (values-ref _g28300_ 0))
                                          (_opt4936_ (values-ref _g28300_ 1))
                                          (_tail4937_ (values-ref _g28300_ 2)))
                                      (let ((_g49394947_
                                             (lambda (_g49404943_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g49404943_))))
                                        (let ((_g49385116_
                                               (lambda (_g49404951_)
                                                 ((lambda (_L4954_)
                                                    (let ()
                                                      (let ((_g49674975_
                                                             (lambda (_g49684971_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g49684971_))))
                                                        (let ((_g49665112_
                                                               (lambda (_g49684979_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L4982_)
                            (let ()
                              (let ((_g49955012_
                                     (lambda (_g49965008_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g49965008_))))
                                (let ((_g49945108_
                                       (lambda (_g49965016_)
                                         (if (gx#stx-pair/null? _g49965016_)
                                             (if (fx>= (gx#stx-length
                                                        _g49965016_)
                                                       '0)
                                                 (let ((_g28302_
                                                        (gx#syntax-split-splice
                                                         _g49965016_
                                                         '0)))
                                                   (begin
                                                     (let ((_g28303_
                                                            (values-count
                                                             _g28302_)))
                                                       (if (not (fx= _g28303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g28303_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target49985019_
                                                            (values-ref
                                                             _g28302_
                                                             0))
                                                           (_tl50005022_
                                                            (values-ref
                                                             _g28302_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl50005022_)
                                                           (letrec ((_loop50015025_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd49995029_ _clause50055032_)
                               (if (gx#stx-pair? _hd49995029_)
                                   (let ((_e50025035_
                                          (gx#syntax-e _hd49995029_)))
                                     (let ((_lp-hd50035039_
                                            (##car _e50025035_))
                                           (_lp-tl50045042_
                                            (##cdr _e50025035_)))
                                       (_loop50015025_
                                        _lp-tl50045042_
                                        (cons _lp-hd50035039_
                                              _clause50055032_))))
                                   (let ((_clause50065045_
                                          (reverse _clause50055032_)))
                                     ((lambda (_L5049_)
                                        (let ()
                                          (let ((_g50665074_
                                                 (lambda (_g50675070_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g50675070_))))
                                            (let ((_g50655096_
                                                   (lambda (_g50675078_)
                                                     ((lambda (_L5081_)
                                                        (let ()
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let-values)
                          (cons (cons (cons (cons _L4954_ '())
                                            (cons _L4982_ '()))
                                      '())
                                (cons _L5081_ '()))))))
              _g50675078_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g50655096_
                                               (gx#stx-wrap-source
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'case-lambda)
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g50995102_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g51005105_)
                         (cons _g50995102_ _g51005105_))
                       '()
                       _L5049_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#stx-source _stx4627_)))))))
                                      _clause50065045_))))))
                     (_loop50015025_ _target49985019_ '()))
                   (_g49955012_ _g49965016_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g49955012_ _g49965016_))
                                             (_g49955012_ _g49965016_)))))
                                  (_g49945108_
                                   (_generate-opt-dispatch4639_
                                    _L4954_
                                    _pre4934_
                                    _opt4936_
                                    _tail4937_))))))
                          _g49684979_))))
                  (_g49665112_
                   (gx#stx-wrap-source
                    (_generate-opt-primary4638_
                     _pre4934_
                     _opt4936_
                     _tail4937_
                     _L4919_)
                    (gx#stx-source _stx4627_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g49404951_))))
                                          (_g49385116_
                                           (gx#genident 'opt-lambda)))))))
                                (_g46474892_ _g46494896_)))
                          _tl46654916_
                          _hd46644913_)))
                     (_g46474892_ _g46494896_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g46474892_
                                                      _g46494896_)))))
                                          (let ((_g46455162_
                                                 (lambda (_g46495124_)
                                                   (if (gx#stx-pair?
                                                        _g46495124_)
                                                       (let ((_e46525127_
                                                              (gx#syntax-e
                                                               _g46495124_)))
                                                         (let ((_hd46535131_
                                                                (##car _e46525127_))
                                                               (_tl46545134_
                                                                (##cdr _e46525127_)))
                                                           (if (gx#stx-pair?
                                                                _tl46545134_)
                                                               (let ((_e46555137_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl46545134_)))
                         (let ((_hd46565141_ (##car _e46555137_))
                               (_tl46575144_ (##cdr _e46555137_)))
                           ((lambda (_L5147_ _L5149_)
                              (if (_simple-lambda?4630_ _L5149_)
                                  (cons (gx#datum->syntax '#f 'lambda%)
                                        (cons _L5149_ _L5147_))
                                  (_g46465120_ _g46495124_)))
                            _tl46575144_
                            _hd46565141_)))
                       (_g46465120_ _g46495124_))))
               (_g46465120_ _g46495124_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g46455162_
                                             _stx4627_)))))))))))))))))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#def|
      (lambda (_$stx7794_)
        (let ((_g77997838_
               (lambda (_g78007834_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g78007834_))))
          (let ((_g77987893_
                 (lambda (_g78007842_)
                   (if (gx#stx-pair? _g78007842_)
                       (let ((_e78247845_ (gx#syntax-e _g78007842_)))
                         (let ((_hd78257849_ (##car _e78247845_))
                               (_tl78267852_ (##cdr _e78247845_)))
                           (if (gx#stx-pair? _tl78267852_)
                               (let ((_e78277855_ (gx#syntax-e _tl78267852_)))
                                 (let ((_hd78287859_ (##car _e78277855_))
                                       (_tl78297862_ (##cdr _e78277855_)))
                                   (if (gx#stx-pair? _tl78297862_)
                                       (let ((_e78307865_
                                              (gx#syntax-e _tl78297862_)))
                                         (let ((_hd78317869_
                                                (##car _e78307865_))
                                               (_tl78327872_
                                                (##cdr _e78307865_)))
                                           (if (gx#stx-null? _tl78327872_)
                                               ((lambda (_L7875_ _L7877_)
                                                  (if (gx#identifier? _L7877_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'define-values)
                                                            (cons (cons _L7877_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons _L7875_ '())))
              (_g77997838_ _g78007842_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd78317869_
                                                _hd78287859_)
                                               (_g77997838_ _g78007842_))))
                                       (_g77997838_ _g78007842_))))
                               (_g77997838_ _g78007842_))))
                       (_g77997838_ _g78007842_)))))
            (let ((_g77977991_
                   (lambda (_g78007897_)
                     (if (gx#stx-pair? _g78007897_)
                         (let ((_e78047900_ (gx#syntax-e _g78007897_)))
                           (let ((_hd78057904_ (##car _e78047900_))
                                 (_tl78067907_ (##cdr _e78047900_)))
                             (if (gx#stx-pair? _tl78067907_)
                                 (let ((_e78077910_
                                        (gx#syntax-e _tl78067907_)))
                                   (let ((_hd78087914_ (##car _e78077910_))
                                         (_tl78097917_ (##cdr _e78077910_)))
                                     (if (gx#stx-pair? _hd78087914_)
                                         (let ((_e78107920_
                                                (gx#syntax-e _hd78087914_)))
                                           (let ((_hd78117924_
                                                  (##car _e78107920_))
                                                 (_tl78127927_
                                                  (##cdr _e78107920_)))
                                             (if (gx#stx-pair/null?
                                                  _tl78097917_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl78097917_)
                                                           '0)
                                                     (let ((_g28320_
                                                            (gx#syntax-split-splice
                                                             _tl78097917_
                                                             '0)))
                                                       (begin
                                                         (let ((_g28321_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g28320_)))
                   (if (not (fx= _g28321_ 2))
                       (error "Context expects 2 values" _g28321_)))
                 (let ((_target78137930_ (values-ref _g28320_ 0))
                       (_tl78157933_ (values-ref _g28320_ 1)))
                   (if (gx#stx-null? _tl78157933_)
                       (letrec ((_loop78167936_
                                 (lambda (_hd78147940_ _body78207943_)
                                   (if (gx#stx-pair? _hd78147940_)
                                       (let ((_e78177946_
                                              (gx#syntax-e _hd78147940_)))
                                         (let ((_lp-hd78187950_
                                                (##car _e78177946_))
                                               (_lp-tl78197953_
                                                (##cdr _e78177946_)))
                                           (_loop78167936_
                                            _lp-tl78197953_
                                            (cons _lp-hd78187950_
                                                  _body78207943_))))
                                       (let ((_body78217956_
                                              (reverse _body78207943_)))
                                         ((lambda (_L7960_ _L7962_ _L7963_)
                                            (if (gx#identifier? _L7963_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'define-values)
                                                      (cons (cons _L7963_ '())
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'lambda)
                                (cons _L7962_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g79827985_
                                                        _g79837988_)
                                                 (cons _g79827985_
                                                       _g79837988_))
                                               '()
                                               _L7960_))))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g77987893_ _g78007897_)))
                                          _body78217956_
                                          _tl78127927_
                                          _hd78117924_))))))
                         (_loop78167936_ _target78137930_ '()))
                       (_g77987893_ _g78007897_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g77987893_ _g78007897_))
                                                 (_g77987893_ _g78007897_))))
                                         (_g77987893_ _g78007897_))))
                                 (_g77987893_ _g78007897_))))
                         (_g77987893_ _g78007897_)))))
              (_g77977991_ _$stx7794_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#def*|
      (lambda (_$stx7996_)
        (let ((_g80008024_
               (lambda (_g80018020_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g80018020_))))
          (let ((_g79998109_
                 (lambda (_g80018028_)
                   (if (gx#stx-pair? _g80018028_)
                       (let ((_e80048031_ (gx#syntax-e _g80018028_)))
                         (let ((_hd80058035_ (##car _e80048031_))
                               (_tl80068038_ (##cdr _e80048031_)))
                           (if (gx#stx-pair? _tl80068038_)
                               (let ((_e80078041_ (gx#syntax-e _tl80068038_)))
                                 (let ((_hd80088045_ (##car _e80078041_))
                                       (_tl80098048_ (##cdr _e80078041_)))
                                   (if (gx#stx-pair/null? _tl80098048_)
                                       (if (fx>= (gx#stx-length _tl80098048_)
                                                 '0)
                                           (let ((_g28322_
                                                  (gx#syntax-split-splice
                                                   _tl80098048_
                                                   '0)))
                                             (begin
                                               (let ((_g28323_
                                                      (values-count _g28322_)))
                                                 (if (not (fx= _g28323_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28323_)))
                                               (let ((_target80108051_
                                                      (values-ref _g28322_ 0))
                                                     (_tl80128054_
                                                      (values-ref _g28322_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl80128054_)
                                                     (letrec ((_loop80138057_
                                                               (lambda (_hd80118061_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _clauses80178064_)
                         (if (gx#stx-pair? _hd80118061_)
                             (let ((_e80148067_ (gx#syntax-e _hd80118061_)))
                               (let ((_lp-hd80158071_ (##car _e80148067_))
                                     (_lp-tl80168074_ (##cdr _e80148067_)))
                                 (_loop80138057_
                                  _lp-tl80168074_
                                  (cons _lp-hd80158071_ _clauses80178064_))))
                             (let ((_clauses80188077_
                                    (reverse _clauses80178064_)))
                               ((lambda (_L8081_ _L8083_)
                                  (if (gx#identifier? _L8083_)
                                      (cons (gx#datum->syntax
                                             '#f
                                             'define-values)
                                            (cons (cons _L8083_ '())
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'case-lambda)
                                                              (begin
                                                                '#!void
                                                                (foldr (lambda (_g81008103_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g81018106_)
                                 (cons _g81008103_ _g81018106_))
                               '()
                               _L8081_)))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_g80008024_ _g80018028_)))
                                _clauses80188077_
                                _hd80088045_))))))
               (_loop80138057_ _target80108051_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g80008024_
                                                      _g80018028_)))))
                                           (_g80008024_ _g80018028_))
                                       (_g80008024_ _g80018028_))))
                               (_g80008024_ _g80018028_))))
                       (_g80008024_ _g80018028_)))))
            (_g79998109_ _$stx7996_)))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#defvalues|
      (lambda (_$stx8114_)
        (let ((_g81188136_
               (lambda (_g81198132_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g81198132_))))
          (let ((_g81178191_
                 (lambda (_g81198140_)
                   (if (gx#stx-pair? _g81198140_)
                       (let ((_e81228143_ (gx#syntax-e _g81198140_)))
                         (let ((_hd81238147_ (##car _e81228143_))
                               (_tl81248150_ (##cdr _e81228143_)))
                           (if (gx#stx-pair? _tl81248150_)
                               (let ((_e81258153_ (gx#syntax-e _tl81248150_)))
                                 (let ((_hd81268157_ (##car _e81258153_))
                                       (_tl81278160_ (##cdr _e81258153_)))
                                   (if (gx#stx-pair? _tl81278160_)
                                       (let ((_e81288163_
                                              (gx#syntax-e _tl81278160_)))
                                         (let ((_hd81298167_
                                                (##car _e81288163_))
                                               (_tl81308170_
                                                (##cdr _e81288163_)))
                                           (if (gx#stx-null? _tl81308170_)
                                               ((lambda (_L8173_ _L8175_)
                                                  (if (gx#identifier-list?
                                                       _L8175_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'define-values)
                                                            (cons _L8175_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L8173_ '())))
              (_g81188136_ _g81198140_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd81298167_
                                                _hd81268157_)
                                               (_g81188136_ _g81198140_))))
                                       (_g81188136_ _g81198140_))))
                               (_g81188136_ _g81198140_))))
                       (_g81188136_ _g81198140_)))))
            (_g81178191_ _$stx8114_)))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#case|
      (lambda (_$stx8195_)
        (let ((_g81998223_
               (lambda (_g82008219_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g82008219_))))
          (let ((_g81988308_
                 (lambda (_g82008227_)
                   (if (gx#stx-pair? _g82008227_)
                       (let ((_e82038230_ (gx#syntax-e _g82008227_)))
                         (let ((_hd82048234_ (##car _e82038230_))
                               (_tl82058237_ (##cdr _e82038230_)))
                           (if (gx#stx-pair? _tl82058237_)
                               (let ((_e82068240_ (gx#syntax-e _tl82058237_)))
                                 (let ((_hd82078244_ (##car _e82068240_))
                                       (_tl82088247_ (##cdr _e82068240_)))
                                   (if (gx#stx-pair/null? _tl82088247_)
                                       (if (fx>= (gx#stx-length _tl82088247_)
                                                 '0)
                                           (let ((_g28324_
                                                  (gx#syntax-split-splice
                                                   _tl82088247_
                                                   '0)))
                                             (begin
                                               (let ((_g28325_
                                                      (values-count _g28324_)))
                                                 (if (not (fx= _g28325_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28325_)))
                                               (let ((_target82098250_
                                                      (values-ref _g28324_ 0))
                                                     (_tl82118253_
                                                      (values-ref _g28324_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl82118253_)
                                                     (letrec ((_loop82128256_
                                                               (lambda (_hd82108260_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _clause82168263_)
                         (if (gx#stx-pair? _hd82108260_)
                             (let ((_e82138266_ (gx#syntax-e _hd82108260_)))
                               (let ((_lp-hd82148270_ (##car _e82138266_))
                                     (_lp-tl82158273_ (##cdr _e82138266_)))
                                 (_loop82128256_
                                  _lp-tl82158273_
                                  (cons _lp-hd82148270_ _clause82168263_))))
                             (let ((_clause82178276_
                                    (reverse _clause82168263_)))
                               ((lambda (_L8280_ _L8282_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f '$e)
                                                    (cons _L8282_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '~case)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '$e)
                        (begin
                          '#!void
                          (foldr (lambda (_g82998302_ _g83008305_)
                                   (cons _g82998302_ _g83008305_))
                                 '()
                                 _L8280_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                                _clause82178276_
                                _hd82078244_))))))
               (_loop82128256_ _target82098250_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g81998223_
                                                      _g82008227_)))))
                                           (_g81998223_ _g82008227_))
                                       (_g81998223_ _g82008227_))))
                               (_g81998223_ _g82008227_))))
                       (_g81998223_ _g82008227_)))))
            (_g81988308_ _$stx8195_)))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#~case|
      (lambda (_$stx8313_)
        (let ((_g83218419_
               (lambda (_g83228415_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g83228415_))))
          (let ((_g83208534_
                 (lambda (_g83228423_)
                   (if (gx#stx-pair? _g83228423_)
                       (let ((_e83938426_ (gx#syntax-e _g83228423_)))
                         (let ((_hd83948430_ (##car _e83938426_))
                               (_tl83958433_ (##cdr _e83938426_)))
                           (if (gx#stx-pair? _tl83958433_)
                               (let ((_e83968436_ (gx#syntax-e _tl83958433_)))
                                 (let ((_hd83978440_ (##car _e83968436_))
                                       (_tl83988443_ (##cdr _e83968436_)))
                                   (if (gx#stx-pair? _tl83988443_)
                                       (let ((_e83998446_
                                              (gx#syntax-e _tl83988443_)))
                                         (let ((_hd84008450_
                                                (##car _e83998446_))
                                               (_tl84018453_
                                                (##cdr _e83998446_)))
                                           (if (gx#stx-pair? _hd84008450_)
                                               (let ((_e84028456_
                                                      (gx#syntax-e
                                                       _hd84008450_)))
                                                 (let ((_hd84038460_
                                                        (##car _e84028456_))
                                                       (_tl84048463_
                                                        (##cdr _e84028456_)))
                                                   (if (gx#stx-pair/null?
                                                        _tl84048463_)
                                                       (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl84048463_)
                         '0)
                   (let ((_g28326_ (gx#syntax-split-splice _tl84048463_ '0)))
                     (begin
                       (let ((_g28327_ (values-count _g28326_)))
                         (if (not (fx= _g28327_ 2))
                             (error "Context expects 2 values" _g28327_)))
                       (let ((_target84058466_ (values-ref _g28326_ 0))
                             (_tl84078469_ (values-ref _g28326_ 1)))
                         (if (gx#stx-null? _tl84078469_)
                             (letrec ((_loop84088472_
                                       (lambda (_hd84068476_ _body84128479_)
                                         (if (gx#stx-pair? _hd84068476_)
                                             (let ((_e84098482_
                                                    (gx#syntax-e
                                                     _hd84068476_)))
                                               (let ((_lp-hd84108486_
                                                      (##car _e84098482_))
                                                     (_lp-tl84118489_
                                                      (##cdr _e84098482_)))
                                                 (_loop84088472_
                                                  _lp-tl84118489_
                                                  (cons _lp-hd84108486_
                                                        _body84128479_))))
                                             (let ((_body84138492_
                                                    (reverse _body84128479_)))
                                               ((lambda (_L8496_
                                                         _L8498_
                                                         _L8499_
                                                         _L8500_
                                                         _L8501_)
                                                  (if (gx#stx-list? _L8499_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '~case-test)
                                (cons _L8500_ (cons _L8499_ '())))
                          (cons (cons (gx#datum->syntax '#f 'begin)
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g85258528_
                                                        _g85268531_)
                                                 (cons _g85258528_
                                                       _g85268531_))
                                               '()
                                               _L8498_)))
                                (cons (cons _L8501_ (cons _L8500_ _L8496_))
                                      '()))))
              (_g83218419_ _g83228423_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl84018453_
                                                _body84138492_
                                                _hd84038460_
                                                _hd83978440_
                                                _hd83948430_))))))
                               (_loop84088472_ _target84058466_ '()))
                             (_g83218419_ _g83228423_)))))
                   (_g83218419_ _g83228423_))
               (_g83218419_ _g83228423_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g83218419_ _g83228423_))))
                                       (_g83218419_ _g83228423_))))
                               (_g83218419_ _g83228423_))))
                       (_g83218419_ _g83228423_)))))
            (let ((_g83198630_
                   (lambda (_g83228538_)
                     (if (gx#stx-pair? _g83228538_)
                         (let ((_e83708541_ (gx#syntax-e _g83228538_)))
                           (let ((_hd83718545_ (##car _e83708541_))
                                 (_tl83728548_ (##cdr _e83708541_)))
                             (if (gx#stx-pair? _tl83728548_)
                                 (let ((_e83738551_
                                        (gx#syntax-e _tl83728548_)))
                                   (let ((_hd83748555_ (##car _e83738551_))
                                         (_tl83758558_ (##cdr _e83738551_)))
                                     (if (gx#stx-pair? _tl83758558_)
                                         (let ((_e83768561_
                                                (gx#syntax-e _tl83758558_)))
                                           (let ((_hd83778565_
                                                  (##car _e83768561_))
                                                 (_tl83788568_
                                                  (##cdr _e83768561_)))
                                             (if (gx#stx-pair? _hd83778565_)
                                                 (let ((_e83798571_
                                                        (gx#syntax-e
                                                         _hd83778565_)))
                                                   (let ((_hd83808575_
                                                          (##car _e83798571_))
                                                         (_tl83818578_
                                                          (##cdr _e83798571_)))
                                                     (if (gx#stx-pair?
                                                          _tl83818578_)
                                                         (let ((_e83828581_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl83818578_)))
                   (let ((_hd83838585_ (##car _e83828581_))
                         (_tl83848588_ (##cdr _e83828581_)))
                     (if (gx#identifier? _hd83838585_)
                         (if (gx#free-identifier=?
                              |gerbil/core::<sugar>::<sugar:2>[1]#_g28328_|
                              _hd83838585_)
                             (if (gx#stx-pair? _tl83848588_)
                                 (let ((_e83858591_
                                        (gx#syntax-e _tl83848588_)))
                                   (let ((_hd83868595_ (##car _e83858591_))
                                         (_tl83878598_ (##cdr _e83858591_)))
                                     (if (gx#stx-null? _tl83878598_)
                                         ((lambda (_L8601_
                                                   _L8603_
                                                   _L8604_
                                                   _L8605_
                                                   _L8606_)
                                            (if (gx#stx-list? _L8604_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'if)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '~case-test)
                          (cons _L8605_ (cons _L8604_ '())))
                    (cons (cons _L8603_ (cons _L8605_ '()))
                          (cons (cons _L8606_ (cons _L8605_ _L8601_)) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g83208534_ _g83228538_)))
                                          _tl83788568_
                                          _hd83868595_
                                          _hd83808575_
                                          _hd83748555_
                                          _hd83718545_)
                                         (_g83208534_ _g83228538_))))
                                 (_g83208534_ _g83228538_))
                             (_g83208534_ _g83228538_))
                         (_g83208534_ _g83228538_))))
                 (_g83208534_ _g83228538_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g83208534_ _g83228538_))))
                                         (_g83208534_ _g83228538_))))
                                 (_g83208534_ _g83228538_))))
                         (_g83208534_ _g83228538_)))))
              (let ((_g83188694_
                     (lambda (_g83228634_)
                       (if (gx#stx-pair? _g83228634_)
                           (let ((_e83538637_ (gx#syntax-e _g83228634_)))
                             (let ((_hd83548641_ (##car _e83538637_))
                                   (_tl83558644_ (##cdr _e83538637_)))
                               (if (gx#stx-pair? _tl83558644_)
                                   (let ((_e83568647_
                                          (gx#syntax-e _tl83558644_)))
                                     (let ((_hd83578651_ (##car _e83568647_))
                                           (_tl83588654_ (##cdr _e83568647_)))
                                       (if (gx#stx-pair? _tl83588654_)
                                           (let ((_e83598657_
                                                  (gx#syntax-e _tl83588654_)))
                                             (let ((_hd83608661_
                                                    (##car _e83598657_))
                                                   (_tl83618664_
                                                    (##cdr _e83598657_)))
                                               (if (gx#stx-pair? _hd83608661_)
                                                   (let ((_e83628667_
                                                          (gx#syntax-e
                                                           _hd83608661_)))
                                                     (let ((_hd83638671_
                                                            (##car _e83628667_))
                                                           (_tl83648674_
                                                            (##cdr _e83628667_)))
                                                       (if (gx#identifier?
                                                            _hd83638671_)
                                                           (if (gx#free-identifier=?
                                                                |gerbil/core::<sugar>::<sugar:2>[1]#_g28329_|
                                                                _hd83638671_)
                                                               ((lambda (_L8677_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'syntax-error)
                                (cons '"Bad syntax; misplaced else" '())))
                        _hd83578651_)
                       (_g83198630_ _g83228634_))
                   (_g83198630_ _g83228634_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g83198630_ _g83228634_))))
                                           (_g83198630_ _g83228634_))))
                                   (_g83198630_ _g83228634_))))
                           (_g83198630_ _g83228634_)))))
                (let ((_g83178802_
                       (lambda (_g83228698_)
                         (if (gx#stx-pair? _g83228698_)
                             (let ((_e83318701_ (gx#syntax-e _g83228698_)))
                               (let ((_hd83328705_ (##car _e83318701_))
                                     (_tl83338708_ (##cdr _e83318701_)))
                                 (if (gx#stx-pair? _tl83338708_)
                                     (let ((_e83348711_
                                            (gx#syntax-e _tl83338708_)))
                                       (let ((_hd83358715_ (##car _e83348711_))
                                             (_tl83368718_
                                              (##cdr _e83348711_)))
                                         (if (gx#stx-pair? _tl83368718_)
                                             (let ((_e83378721_
                                                    (gx#syntax-e
                                                     _tl83368718_)))
                                               (let ((_hd83388725_
                                                      (##car _e83378721_))
                                                     (_tl83398728_
                                                      (##cdr _e83378721_)))
                                                 (if (gx#stx-pair?
                                                      _hd83388725_)
                                                     (let ((_e83408731_
                                                            (gx#syntax-e
                                                             _hd83388725_)))
                                                       (let ((_hd83418735_
                                                              (##car _e83408731_))
                                                             (_tl83428738_
                                                              (##cdr _e83408731_)))
                                                         (if (gx#identifier?
                                                              _hd83418735_)
                                                             (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          |gerbil/core::<sugar>::<sugar:2>[1]#_g28330_|
                          _hd83418735_)
                         (if (gx#stx-pair/null? _tl83428738_)
                             (if (fx>= (gx#stx-length _tl83428738_) '0)
                                 (let ((_g28331_
                                        (gx#syntax-split-splice
                                         _tl83428738_
                                         '0)))
                                   (begin
                                     (let ((_g28332_ (values-count _g28331_)))
                                       (if (not (fx= _g28332_ 2))
                                           (error "Context expects 2 values"
                                                  _g28332_)))
                                     (let ((_target83438741_
                                            (values-ref _g28331_ 0))
                                           (_tl83458744_
                                            (values-ref _g28331_ 1)))
                                       (if (gx#stx-null? _tl83458744_)
                                           (letrec ((_loop83468747_
                                                     (lambda (_hd83448751_
                                                              _body83508754_)
                                                       (if (gx#stx-pair?
                                                            _hd83448751_)
                                                           (let ((_e83478757_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd83448751_)))
                     (let ((_lp-hd83488761_ (##car _e83478757_))
                           (_lp-tl83498764_ (##cdr _e83478757_)))
                       (_loop83468747_
                        _lp-tl83498764_
                        (cons _lp-hd83488761_ _body83508754_))))
                   (let ((_body83518767_ (reverse _body83508754_)))
                     (if (gx#stx-null? _tl83398728_)
                         ((lambda (_L8771_ _L8773_)
                            (cons (gx#datum->syntax '#f 'begin)
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g87938796_ _g87948799_)
                                             (cons _g87938796_ _g87948799_))
                                           '()
                                           _L8771_))))
                          _body83518767_
                          _hd83358715_)
                         (_g83188694_ _g83228698_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop83468747_
                                              _target83438741_
                                              '()))
                                           (_g83188694_ _g83228698_)))))
                                 (_g83188694_ _g83228698_))
                             (_g83188694_ _g83228698_))
                         (_g83188694_ _g83228698_))
                     (_g83188694_ _g83228698_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g83188694_
                                                      _g83228698_))))
                                             (_g83188694_ _g83228698_))))
                                     (_g83188694_ _g83228698_))))
                             (_g83188694_ _g83228698_)))))
                  (let ((_g83168833_
                         (lambda (_g83228806_)
                           (if (gx#stx-pair? _g83228806_)
                               (let ((_e83238809_ (gx#syntax-e _g83228806_)))
                                 (let ((_hd83248813_ (##car _e83238809_))
                                       (_tl83258816_ (##cdr _e83238809_)))
                                   (if (gx#stx-pair? _tl83258816_)
                                       (let ((_e83268819_
                                              (gx#syntax-e _tl83258816_)))
                                         (let ((_hd83278823_
                                                (##car _e83268819_))
                                               (_tl83288826_
                                                (##cdr _e83268819_)))
                                           (if (gx#stx-null? _tl83288826_)
                                               ((lambda () '#!void))
                                               (_g83178802_ _g83228806_))))
                                       (_g83178802_ _g83228806_))))
                               (_g83178802_ _g83228806_)))))
                    (_g83168833_ _$stx8313_)))))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#~case-test|
      (lambda (_stx8839_)
        (let ((_memq-datum?8842_
               (lambda (_x9204_)
                 (let ((_e9207_ (gx#stx-e _x9204_)))
                   (let ((_$e9210_ (symbol? _e9207_)))
                     (if _$e9210_
                         _$e9210_
                         (let ((_$e9214_ (keyword? _e9207_)))
                           (if _$e9214_ _$e9214_ (immediate? _e9207_)))))))))
          (let ((_memv-datum?8844_
                 (lambda (_x9197_)
                   (let ((_$e9200_ (_memq-datum?8842_ _x9197_)))
                     (if _$e9200_ _$e9200_ (gx#stx-number? _x9197_))))))
            (let ((_g88488899_
                   (lambda (_g88498895_)
                     (gx#raise-syntax-error '#f '"Bad syntax" _g88498895_))))
              (let ((_g88479044_
                     (lambda (_g88498903_)
                       (if (gx#stx-pair? _g88498903_)
                           (let ((_e88768906_ (gx#syntax-e _g88498903_)))
                             (let ((_hd88778910_ (##car _e88768906_))
                                   (_tl88788913_ (##cdr _e88768906_)))
                               (if (gx#stx-pair? _tl88788913_)
                                   (let ((_e88798916_
                                          (gx#syntax-e _tl88788913_)))
                                     (let ((_hd88808920_ (##car _e88798916_))
                                           (_tl88818923_ (##cdr _e88798916_)))
                                       (if (gx#stx-pair? _tl88818923_)
                                           (let ((_e88828926_
                                                  (gx#syntax-e _tl88818923_)))
                                             (let ((_hd88838930_
                                                    (##car _e88828926_))
                                                   (_tl88848933_
                                                    (##cdr _e88828926_)))
                                               (if (gx#stx-pair/null?
                                                    _hd88838930_)
                                                   (if (fx>= (gx#stx-length
                                                              _hd88838930_)
                                                             '0)
                                                       (let ((_g28333_
                                                              (gx#syntax-split-splice
                                                               _hd88838930_
                                                               '0)))
                                                         (begin
                                                           (let ((_g28334_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g28333_)))
                     (if (not (fx= _g28334_ 2))
                         (error "Context expects 2 values" _g28334_)))
                   (let ((_target88858936_ (values-ref _g28333_ 0))
                         (_tl88878939_ (values-ref _g28333_ 1)))
                     (if (gx#stx-null? _tl88878939_)
                         (letrec ((_loop88888942_
                                   (lambda (_hd88868946_ _datum88928949_)
                                     (if (gx#stx-pair? _hd88868946_)
                                         (let ((_e88898952_
                                                (gx#syntax-e _hd88868946_)))
                                           (let ((_lp-hd88908956_
                                                  (##car _e88898952_))
                                                 (_lp-tl88918959_
                                                  (##cdr _e88898952_)))
                                             (_loop88888942_
                                              _lp-tl88918959_
                                              (cons _lp-hd88908956_
                                                    _datum88928949_))))
                                         (let ((_datum88938962_
                                                (reverse _datum88928949_)))
                                           (if (gx#stx-null? _tl88848933_)
                                               ((lambda (_L8966_ _L8968_)
                                                  (let ((_g89898997_
                                                         (lambda (_g89908993_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g89908993_))))
                                                    (let ((_g89889024_
                                                           (lambda (_g89909001_)
                                                             ((lambda (_L9004_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L9004_
                                (cons _L8968_
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons (begin
                                                          '#!void
                                                          (foldr (lambda (_g90159018_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g90169021_)
                           (cons _g90159018_ _g90169021_))
                         '()
                         _L8966_))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                      _g89909001_))))
              (_g89889024_
               (if (gx#stx-andmap
                    _memq-datum?8842_
                    (begin
                      '#!void
                      (foldr (lambda (_g90279030_ _g90289033_)
                               (cons _g90279030_ _g90289033_))
                             '()
                             _L8966_)))
                   (gx#datum->syntax '#f 'memq)
                   (if (gx#stx-andmap
                        _memv-datum?8844_
                        (begin
                          '#!void
                          (foldr (lambda (_g90359038_ _g90369041_)
                                   (cons _g90359038_ _g90369041_))
                                 '()
                                 _L8966_)))
                       (gx#datum->syntax '#f 'memv)
                       (gx#datum->syntax '#f 'member)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _datum88938962_
                                                _hd88808920_)
                                               (_g88488899_ _g88498903_)))))))
                           (_loop88888942_ _target88858936_ '()))
                         (_g88488899_ _g88498903_)))))
               (_g88488899_ _g88498903_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g88488899_ _g88498903_))))
                                           (_g88488899_ _g88498903_))))
                                   (_g88488899_ _g88498903_))))
                           (_g88488899_ _g88498903_)))))
                (let ((_g88469141_
                       (lambda (_g88499048_)
                         (if (gx#stx-pair? _g88499048_)
                             (let ((_e88629051_ (gx#syntax-e _g88499048_)))
                               (let ((_hd88639055_ (##car _e88629051_))
                                     (_tl88649058_ (##cdr _e88629051_)))
                                 (if (gx#stx-pair? _tl88649058_)
                                     (let ((_e88659061_
                                            (gx#syntax-e _tl88649058_)))
                                       (let ((_hd88669065_ (##car _e88659061_))
                                             (_tl88679068_
                                              (##cdr _e88659061_)))
                                         (if (gx#stx-pair? _tl88679068_)
                                             (let ((_e88689071_
                                                    (gx#syntax-e
                                                     _tl88679068_)))
                                               (let ((_hd88699075_
                                                      (##car _e88689071_))
                                                     (_tl88709078_
                                                      (##cdr _e88689071_)))
                                                 (if (gx#stx-pair?
                                                      _hd88699075_)
                                                     (let ((_e88719081_
                                                            (gx#syntax-e
                                                             _hd88699075_)))
                                                       (let ((_hd88729085_
                                                              (##car _e88719081_))
                                                             (_tl88739088_
                                                              (##cdr _e88719081_)))
                                                         (if (gx#stx-null?
                                                              _tl88739088_)
                                                             (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl88709078_)
                         ((lambda (_L9091_ _L9093_)
                            (let ((_g91109118_
                                   (lambda (_g91119114_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g91119114_))))
                              (let ((_g91099137_
                                     (lambda (_g91119122_)
                                       ((lambda (_L9125_)
                                          (let ()
                                            (cons _L9125_
                                                  (cons _L9093_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons _L9091_ '()))
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g91119122_))))
                                (_g91099137_
                                 (if (_memq-datum?8842_ _L9091_)
                                     (gx#datum->syntax '#f 'eq?)
                                     (if (_memv-datum?8844_ _L9091_)
                                         (gx#datum->syntax '#f 'eqv?)
                                         (gx#datum->syntax '#f 'equal?)))))))
                          _hd88729085_
                          _hd88669065_)
                         (_g88479044_ _g88499048_))
                     (_g88479044_ _g88499048_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g88479044_
                                                      _g88499048_))))
                                             (_g88479044_ _g88499048_))))
                                     (_g88479044_ _g88499048_))))
                             (_g88479044_ _g88499048_)))))
                  (let ((_g88459193_
                         (lambda (_g88499145_)
                           (if (gx#stx-pair? _g88499145_)
                               (let ((_e88519148_ (gx#syntax-e _g88499145_)))
                                 (let ((_hd88529152_ (##car _e88519148_))
                                       (_tl88539155_ (##cdr _e88519148_)))
                                   (if (gx#stx-pair? _tl88539155_)
                                       (let ((_e88549158_
                                              (gx#syntax-e _tl88539155_)))
                                         (let ((_hd88559162_
                                                (##car _e88549158_))
                                               (_tl88569165_
                                                (##cdr _e88549158_)))
                                           (if (gx#stx-pair? _tl88569165_)
                                               (let ((_e88579168_
                                                      (gx#syntax-e
                                                       _tl88569165_)))
                                                 (let ((_hd88589172_
                                                        (##car _e88579168_))
                                                       (_tl88599175_
                                                        (##cdr _e88579168_)))
                                                   (if (gx#stx-null?
                                                        _hd88589172_)
                                                       (if (gx#stx-null?
                                                            _tl88599175_)
                                                           ((lambda (_L9178_)
                                                              '#f)
                                                            _hd88559162_)
                                                           (_g88469141_
                                                            _g88499145_))
                                                       (_g88469141_
                                                        _g88499145_))))
                                               (_g88469141_ _g88499145_))))
                                       (_g88469141_ _g88499145_))))
                               (_g88469141_ _g88499145_)))))
                    (_g88459193_ _stx8839_)))))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#do|
      (lambda (_$stx9219_)
        (let ((_g92239294_
               (lambda (_g92249290_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g92249290_))))
          (let ((_g92229583_
                 (lambda (_g92249298_)
                   (if (gx#stx-pair? _g92249298_)
                       (let ((_e92319301_ (gx#syntax-e _g92249298_)))
                         (let ((_hd92329305_ (##car _e92319301_))
                               (_tl92339308_ (##cdr _e92319301_)))
                           (if (gx#stx-pair? _tl92339308_)
                               (let ((_e92349311_ (gx#syntax-e _tl92339308_)))
                                 (let ((_hd92359315_ (##car _e92349311_))
                                       (_tl92369318_ (##cdr _e92349311_)))
                                   (if (gx#stx-pair/null? _hd92359315_)
                                       (if (fx>= (gx#stx-length _hd92359315_)
                                                 '0)
                                           (let ((_g28335_
                                                  (gx#syntax-split-splice
                                                   _hd92359315_
                                                   '0)))
                                             (begin
                                               (let ((_g28336_
                                                      (values-count _g28335_)))
                                                 (if (not (fx= _g28336_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28336_)))
                                               (let ((_target92379321_
                                                      (values-ref _g28335_ 0))
                                                     (_tl92399324_
                                                      (values-ref _g28335_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl92399324_)
                                                     (letrec ((_loop92409327_
                                                               (lambda (_hd92389331_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _step92449334_
                                _init92459336_
                                _var92469338_)
                         (if (gx#stx-pair? _hd92389331_)
                             (let ((_e92419341_ (gx#syntax-e _hd92389331_)))
                               (let ((_lp-hd92429345_ (##car _e92419341_))
                                     (_lp-tl92439348_ (##cdr _e92419341_)))
                                 (if (gx#stx-pair? _lp-hd92429345_)
                                     (let ((_e92509351_
                                            (gx#syntax-e _lp-hd92429345_)))
                                       (let ((_hd92519355_ (##car _e92509351_))
                                             (_tl92529358_
                                              (##cdr _e92509351_)))
                                         (if (gx#stx-pair? _tl92529358_)
                                             (let ((_e92539361_
                                                    (gx#syntax-e
                                                     _tl92529358_)))
                                               (let ((_hd92549365_
                                                      (##car _e92539361_))
                                                     (_tl92559368_
                                                      (##cdr _e92539361_)))
                                                 (if (gx#stx-pair/null?
                                                      _tl92559368_)
                                                     (if (fx>= (gx#stx-length
                                                                _tl92559368_)
                                                               '0)
                                                         (let ((_g28337_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl92559368_
                         '0)))
                   (begin
                     (let ((_g28338_ (values-count _g28337_)))
                       (if (not (fx= _g28338_ 2))
                           (error "Context expects 2 values" _g28338_)))
                     (let ((_target92569371_ (values-ref _g28337_ 0))
                           (_tl92589374_ (values-ref _g28337_ 1)))
                       (if (gx#stx-null? _tl92589374_)
                           (letrec ((_loop92599377_
                                     (lambda (_hd92579381_ _step92639384_)
                                       (if (gx#stx-pair? _hd92579381_)
                                           (let ((_e92609387_
                                                  (gx#syntax-e _hd92579381_)))
                                             (let ((_lp-hd92619391_
                                                    (##car _e92609387_))
                                                   (_lp-tl92629394_
                                                    (##cdr _e92609387_)))
                                               (_loop92599377_
                                                _lp-tl92629394_
                                                (cons _lp-hd92619391_
                                                      _step92639384_))))
                                           (let ((_step92649397_
                                                  (reverse _step92639384_)))
                                             (_loop92409327_
                                              _lp-tl92439348_
                                              (cons _step92649397_
                                                    _step92449334_)
                                              (cons _hd92549365_
                                                    _init92459336_)
                                              (cons _hd92519355_
                                                    _var92469338_)))))))
                             (_loop92599377_ _target92569371_ '()))
                           (_g92239294_ _g92249298_)))))
                 (_g92239294_ _g92249298_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g92239294_
                                                      _g92249298_))))
                                             (_g92239294_ _g92249298_))))
                                     (_g92239294_ _g92249298_))))
                             (let ((_step92479401_ (reverse _step92449334_))
                                   (_init92489404_ (reverse _init92459336_))
                                   (_var92499406_ (reverse _var92469338_)))
                               (if (gx#stx-pair? _tl92369318_)
                                   (let ((_e92659409_
                                          (gx#syntax-e _tl92369318_)))
                                     (let ((_hd92669413_ (##car _e92659409_))
                                           (_tl92679416_ (##cdr _e92659409_)))
                                       (if (gx#stx-pair? _hd92669413_)
                                           (let ((_e92689419_
                                                  (gx#syntax-e _hd92669413_)))
                                             (let ((_hd92699423_
                                                    (##car _e92689419_))
                                                   (_tl92709426_
                                                    (##cdr _e92689419_)))
                                               (if (gx#stx-pair/null?
                                                    _tl92709426_)
                                                   (if (fx>= (gx#stx-length
                                                              _tl92709426_)
                                                             '0)
                                                       (let ((_g28339_
                                                              (gx#syntax-split-splice
                                                               _tl92709426_
                                                               '0)))
                                                         (begin
                                                           (let ((_g28340_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g28339_)))
                     (if (not (fx= _g28340_ 2))
                         (error "Context expects 2 values" _g28340_)))
                   (let ((_target92719429_ (values-ref _g28339_ 0))
                         (_tl92739432_ (values-ref _g28339_ 1)))
                     (if (gx#stx-null? _tl92739432_)
                         (letrec ((_loop92749435_
                                   (lambda (_hd92729439_ _fini92789442_)
                                     (if (gx#stx-pair? _hd92729439_)
                                         (let ((_e92759445_
                                                (gx#syntax-e _hd92729439_)))
                                           (let ((_lp-hd92769449_
                                                  (##car _e92759445_))
                                                 (_lp-tl92779452_
                                                  (##cdr _e92759445_)))
                                             (_loop92749435_
                                              _lp-tl92779452_
                                              (cons _lp-hd92769449_
                                                    _fini92789442_))))
                                         (let ((_fini92799455_
                                                (reverse _fini92789442_)))
                                           (if (gx#stx-pair/null? _tl92679416_)
                                               (if (fx>= (gx#stx-length
                                                          _tl92679416_)
                                                         '0)
                                                   (let ((_g28341_
                                                          (gx#syntax-split-splice
                                                           _tl92679416_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28342_
                                                              (values-count
                                                               _g28341_)))
                                                         (if (not (fx= _g28342_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28342_)))
               (let ((_target92809459_ (values-ref _g28341_ 0))
                     (_tl92829462_ (values-ref _g28341_ 1)))
                 (if (gx#stx-null? _tl92829462_)
                     (letrec ((_loop92839465_
                               (lambda (_hd92819469_ _body92879472_)
                                 (if (gx#stx-pair? _hd92819469_)
                                     (let ((_e92849475_
                                            (gx#syntax-e _hd92819469_)))
                                       (let ((_lp-hd92859479_
                                              (##car _e92849475_))
                                             (_lp-tl92869482_
                                              (##cdr _e92849475_)))
                                         (_loop92839465_
                                          _lp-tl92869482_
                                          (cons _lp-hd92859479_
                                                _body92879472_))))
                                     (let ((_body92889485_
                                            (reverse _body92879472_)))
                                       ((lambda (_L9489_
                                                 _L9491_
                                                 _L9492_
                                                 _L9493_
                                                 _L9494_
                                                 _L9495_)
                                          (if (gx#stx-andmap
                                               gx#identifier?
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g95289531_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g95299534_)
                  (cons _g95289531_ _g95299534_))
                '()
                _L9495_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (gx#datum->syntax '#f 'let)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '$loop)
                                                          (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-check-splice-targets _L9494_ _L9495_)
                          (foldr (lambda (_g95369549_ _g95379552_ _g95389554_)
                                   (cons (cons _g95379552_
                                               (cons _g95369549_ '()))
                                         _g95389554_))
                                 '()
                                 _L9494_
                                 _L9495_))
                        (cons (cons (gx#datum->syntax '#f 'if)
                                    (cons (cons (gx#datum->syntax '#f 'not)
                                                (cons _L9492_ '()))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g95399557_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g95409560_)
                         (cons _g95399557_ _g95409560_))
                       (cons (cons (gx#datum->syntax '#f '$loop)
                                   (begin
                                     (gx#syntax-check-splice-targets
                                      _L9493_
                                      _L9495_)
                                     (foldr (lambda (_g95419563_
                                                     _g95429566_
                                                     _g95439568_)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin)
                                                          (cons _g95429566_
                                                                (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr (lambda (_g95449571_ _g95459574_)
                                   (cons _g95449571_ _g95459574_))
                                 '()
                                 _g95419563_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g95439568_))
                                            '()
                                            _L9493_
                                            _L9495_)))
                             '())
                       _L9489_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'begin)
                                                            (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (begin
                            '#!void
                            (foldr (lambda (_g95469577_ _g95479580_)
                                     (cons _g95469577_ _g95479580_))
                                   '()
                                   _L9491_))))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g92239294_ _g92249298_)))
                                        _body92889485_
                                        _fini92799455_
                                        _hd92699423_
                                        _step92479401_
                                        _init92489404_
                                        _var92499406_))))))
                       (_loop92839465_ _target92809459_ '()))
                     (_g92239294_ _g92249298_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g92239294_ _g92249298_))
                                               (_g92239294_ _g92249298_)))))))
                           (_loop92749435_ _target92719429_ '()))
                         (_g92239294_ _g92249298_)))))
               (_g92239294_ _g92249298_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g92239294_ _g92249298_))))
                                           (_g92239294_ _g92249298_))))
                                   (_g92239294_ _g92249298_)))))))
               (_loop92409327_ _target92379321_ '() '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g92239294_
                                                      _g92249298_)))))
                                           (_g92239294_ _g92249298_))
                                       (_g92239294_ _g92249298_))))
                               (_g92239294_ _g92249298_))))
                       (_g92239294_ _g92249298_)))))
            (_g92229583_ _$stx9219_)))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#do-while|
      (lambda (_$stx9591_)
        (let ((_g95959618_
               (lambda (_g95969614_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g95969614_))))
          (let ((_g95949689_
                 (lambda (_g95969622_)
                   (if (gx#stx-pair? _g95969622_)
                       (let ((_e96019625_ (gx#syntax-e _g95969622_)))
                         (let ((_hd96029629_ (##car _e96019625_))
                               (_tl96039632_ (##cdr _e96019625_)))
                           (if (gx#stx-pair? _tl96039632_)
                               (let ((_e96049635_ (gx#syntax-e _tl96039632_)))
                                 (let ((_hd96059639_ (##car _e96049635_))
                                       (_tl96069642_ (##cdr _e96049635_)))
                                   (if (gx#stx-pair? _tl96069642_)
                                       (let ((_e96079645_
                                              (gx#syntax-e _tl96069642_)))
                                         (let ((_hd96089649_
                                                (##car _e96079645_))
                                               (_tl96099652_
                                                (##cdr _e96079645_)))
                                           (if (gx#stx-pair? _hd96089649_)
                                               (let ((_e96109655_
                                                      (gx#syntax-e
                                                       _hd96089649_)))
                                                 (let ((_hd96119659_
                                                        (##car _e96109655_))
                                                       (_tl96129662_
                                                        (##cdr _e96109655_)))
                                                   ((lambda (_L9665_
                                                             _L9667_
                                                             _L9668_
                                                             _L9669_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'do)
                                                            (cons _L9669_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons (gx#datum->syntax '#f 'not)
                                            (cons _L9668_ '()))
                                      _L9667_)
                                _L9665_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl96099652_
                                                    _tl96129662_
                                                    _hd96119659_
                                                    _hd96059639_)))
                                               (_g95959618_ _g95969622_))))
                                       (_g95959618_ _g95969622_))))
                               (_g95959618_ _g95969622_))))
                       (_g95959618_ _g95969622_)))))
            (_g95949689_ _$stx9591_)))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#begin0|
      (lambda (_$stx9693_)
        (let ((_g96989729_
               (lambda (_g96999725_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g96999725_))))
          (let ((_g96979814_
                 (lambda (_g96999733_)
                   (if (gx#stx-pair? _g96999733_)
                       (let ((_e97099736_ (gx#syntax-e _g96999733_)))
                         (let ((_hd97109740_ (##car _e97099736_))
                               (_tl97119743_ (##cdr _e97099736_)))
                           (if (gx#stx-pair? _tl97119743_)
                               (let ((_e97129746_ (gx#syntax-e _tl97119743_)))
                                 (let ((_hd97139750_ (##car _e97129746_))
                                       (_tl97149753_ (##cdr _e97129746_)))
                                   (if (gx#stx-pair/null? _tl97149753_)
                                       (if (fx>= (gx#stx-length _tl97149753_)
                                                 '0)
                                           (let ((_g28343_
                                                  (gx#syntax-split-splice
                                                   _tl97149753_
                                                   '0)))
                                             (begin
                                               (let ((_g28344_
                                                      (values-count _g28343_)))
                                                 (if (not (fx= _g28344_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28344_)))
                                               (let ((_target97159756_
                                                      (values-ref _g28343_ 0))
                                                     (_tl97179759_
                                                      (values-ref _g28343_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl97179759_)
                                                     (letrec ((_loop97189762_
                                                               (lambda (_hd97169766_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _rest97229769_)
                         (if (gx#stx-pair? _hd97169766_)
                             (let ((_e97199772_ (gx#syntax-e _hd97169766_)))
                               (let ((_lp-hd97209776_ (##car _e97199772_))
                                     (_lp-tl97219779_ (##cdr _e97199772_)))
                                 (_loop97189762_
                                  _lp-tl97219779_
                                  (cons _lp-hd97209776_ _rest97229769_))))
                             (let ((_rest97239782_ (reverse _rest97229769_)))
                               ((lambda (_L9786_ _L9788_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f '$r)
                                                    (cons _L9788_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '%#expression)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'begin)
                              (begin
                                '#!void
                                (foldr (lambda (_g98059808_ _g98069811_)
                                         (cons _g98059808_ _g98069811_))
                                       '()
                                       _L9786_)))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '$r)
                                                          '())))))
                                _rest97239782_
                                _hd97139750_))))))
               (_loop97189762_ _target97159756_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g96989729_
                                                      _g96999733_)))))
                                           (_g96989729_ _g96999733_))
                                       (_g96989729_ _g96999733_))))
                               (_g96989729_ _g96999733_))))
                       (_g96989729_ _g96999733_)))))
            (let ((_g96969854_
                   (lambda (_g96999818_)
                     (if (gx#stx-pair? _g96999818_)
                         (let ((_e97019821_ (gx#syntax-e _g96999818_)))
                           (let ((_hd97029825_ (##car _e97019821_))
                                 (_tl97039828_ (##cdr _e97019821_)))
                             (if (gx#stx-pair? _tl97039828_)
                                 (let ((_e97049831_
                                        (gx#syntax-e _tl97039828_)))
                                   (let ((_hd97059835_ (##car _e97049831_))
                                         (_tl97069838_ (##cdr _e97049831_)))
                                     (if (gx#stx-null? _tl97069838_)
                                         ((lambda (_L9841_) _L9841_)
                                          _hd97059835_)
                                         (_g96979814_ _g96999818_))))
                                 (_g96979814_ _g96999818_))))
                         (_g96979814_ _g96999818_)))))
              (_g96969854_ _$stx9693_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#rec|
      (lambda (_$stx9859_)
        (let ((_g98659918_
               (lambda (_g98669914_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g98669914_))))
          (let ((_g986410017_
                 (lambda (_g98669922_)
                   (if (gx#stx-pair? _g98669922_)
                       (let ((_e98959925_ (gx#syntax-e _g98669922_)))
                         (let ((_hd98969929_ (##car _e98959925_))
                               (_tl98979932_ (##cdr _e98959925_)))
                           (if (gx#stx-pair? _tl98979932_)
                               (let ((_e98989935_ (gx#syntax-e _tl98979932_)))
                                 (let ((_hd98999939_ (##car _e98989935_))
                                       (_tl99009942_ (##cdr _e98989935_)))
                                   (if (gx#stx-pair? _hd98999939_)
                                       (let ((_e99019945_
                                              (gx#syntax-e _hd98999939_)))
                                         (let ((_hd99029949_
                                                (##car _e99019945_))
                                               (_tl99039952_
                                                (##cdr _e99019945_)))
                                           (if (gx#stx-pair/null? _tl99009942_)
                                               (if (fx>= (gx#stx-length
                                                          _tl99009942_)
                                                         '0)
                                                   (let ((_g28345_
                                                          (gx#syntax-split-splice
                                                           _tl99009942_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28346_
                                                              (values-count
                                                               _g28345_)))
                                                         (if (not (fx= _g28346_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28346_)))
               (let ((_target99049955_ (values-ref _g28345_ 0))
                     (_tl99069958_ (values-ref _g28345_ 1)))
                 (if (gx#stx-null? _tl99069958_)
                     (letrec ((_loop99079961_
                               (lambda (_hd99059965_ _body99119968_)
                                 (if (gx#stx-pair? _hd99059965_)
                                     (let ((_e99089971_
                                            (gx#syntax-e _hd99059965_)))
                                       (let ((_lp-hd99099975_
                                              (##car _e99089971_))
                                             (_lp-tl99109978_
                                              (##cdr _e99089971_)))
                                         (_loop99079961_
                                          _lp-tl99109978_
                                          (cons _lp-hd99099975_
                                                _body99119968_))))
                                     (let ((_body99129981_
                                            (reverse _body99119968_)))
                                       ((lambda (_L9985_ _L9987_ _L9988_)
                                          (if (gx#identifier? _L9988_)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'letrec)
                                                    (cons (cons (cons _L9988_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f 'lambda)
                                          (cons _L9987_
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g1000810011_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1000910014_)
                   (cons _g1000810011_ _g1000910014_))
                 '()
                 _L9985_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        '())
                  (cons _L9988_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g98659918_ _g98669922_)))
                                        _body99129981_
                                        _tl99039952_
                                        _hd99029949_))))))
                       (_loop99079961_ _target99049955_ '()))
                     (_g98659918_ _g98669922_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g98659918_ _g98669922_))
                                               (_g98659918_ _g98669922_))))
                                       (_g98659918_ _g98669922_))))
                               (_g98659918_ _g98669922_))))
                       (_g98659918_ _g98669922_)))))
            (let ((_g986310083_
                   (lambda (_g986610021_)
                     (if (gx#stx-pair? _g986610021_)
                         (let ((_e988010024_ (gx#syntax-e _g986610021_)))
                           (let ((_hd988110028_ (##car _e988010024_))
                                 (_tl988210031_ (##cdr _e988010024_)))
                             (if (gx#stx-pair? _tl988210031_)
                                 (let ((_e988310034_
                                        (gx#syntax-e _tl988210031_)))
                                   (let ((_hd988410038_ (##car _e988310034_))
                                         (_tl988510041_ (##cdr _e988310034_)))
                                     (if (gx#stx-pair? _hd988410038_)
                                         (let ((_e988610044_
                                                (gx#syntax-e _hd988410038_)))
                                           (let ((_hd988710048_
                                                  (##car _e988610044_))
                                                 (_tl988810051_
                                                  (##cdr _e988610044_)))
                                             (if (gx#identifier? _hd988710048_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core::<sugar>::<sugar:2>[1]#_g28347_|
                                                      _hd988710048_)
                                                     (if (gx#stx-pair?
                                                          _tl988510041_)
                                                         (let ((_e988910054_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl988510041_)))
                   (let ((_hd989010058_ (##car _e988910054_))
                         (_tl989110061_ (##cdr _e988910054_)))
                     (if (gx#stx-null? _tl989110061_)
                         ((lambda (_L10064_ _L10066_)
                            (if (gx#identifier-list? _L10066_)
                                (cons (gx#datum->syntax '#f 'letrec-values)
                                      (cons (cons (cons _L10066_
                                                        (cons _L10064_ '()))
                                                  '())
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'values)
                                                        _L10066_)
                                                  '())))
                                (_g986410017_ _g986610021_)))
                          _hd989010058_
                          _tl988810051_)
                         (_g986410017_ _g986610021_))))
                 (_g986410017_ _g986610021_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g986410017_
                                                      _g986610021_))
                                                 (_g986410017_ _g986610021_))))
                                         (_g986410017_ _g986610021_))))
                                 (_g986410017_ _g986610021_))))
                         (_g986410017_ _g986610021_)))))
              (let ((_g986210137_
                     (lambda (_g986610087_)
                       (if (gx#stx-pair? _g986610087_)
                           (let ((_e986910090_ (gx#syntax-e _g986610087_)))
                             (let ((_hd987010094_ (##car _e986910090_))
                                   (_tl987110097_ (##cdr _e986910090_)))
                               (if (gx#stx-pair? _tl987110097_)
                                   (let ((_e987210100_
                                          (gx#syntax-e _tl987110097_)))
                                     (let ((_hd987310104_ (##car _e987210100_))
                                           (_tl987410107_
                                            (##cdr _e987210100_)))
                                       (if (gx#stx-pair? _tl987410107_)
                                           (let ((_e987510110_
                                                  (gx#syntax-e _tl987410107_)))
                                             (let ((_hd987610114_
                                                    (##car _e987510110_))
                                                   (_tl987710117_
                                                    (##cdr _e987510110_)))
                                               (if (gx#stx-null? _tl987710117_)
                                                   ((lambda (_L10120_ _L10122_)
                                                      (if (gx#identifier?
                                                           _L10122_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'letrec)
                        (cons (cons (cons _L10122_ (cons _L10120_ '())) '())
                              (cons _L10122_ '())))
                  (_g986310083_ _g986610087_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd987610114_
                                                    _hd987310104_)
                                                   (_g986310083_
                                                    _g986610087_))))
                                           (_g986310083_ _g986610087_))))
                                   (_g986310083_ _g986610087_))))
                           (_g986310083_ _g986610087_)))))
                (_g986210137_ _$stx9859_)))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#alet|
      (lambda (_stx10142_)
        (let ((_let-head?10145_
               (lambda (_x10692_)
                 (let ((_g1069610707_
                        (lambda (_g1069710703_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1069710703_))))
                   (let ((_g1069510718_
                          (lambda (_g1069710711_)
                            ((lambda () (gx#identifier? _x10692_))))))
                     (let ((_g1069410748_
                            (lambda (_g1069710722_)
                              (if (gx#stx-pair? _g1069710722_)
                                  (let ((_e1069910725_
                                         (gx#syntax-e _g1069710722_)))
                                    (let ((_hd1070010729_
                                           (##car _e1069910725_))
                                          (_tl1070110732_
                                           (##cdr _e1069910725_)))
                                      (if (gx#identifier? _hd1070010729_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core::<sugar>::<sugar:2>[1]#_g28357_|
                                               _hd1070010729_)
                                              ((lambda (_L10735_)
                                                 (gx#stx-andmap
                                                  gx#identifier?
                                                  _L10735_))
                                               _tl1070110732_)
                                              (_g1069510718_ _g1069710722_))
                                          (_g1069510718_ _g1069710722_))))
                                  (_g1069510718_ _g1069710722_)))))
                       (_g1069410748_ _x10692_)))))))
          (let ((_let-head10147_
                 (lambda (_x10632_)
                   (let ((_g1063610647_
                          (lambda (_g1063710643_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1063710643_))))
                     (let ((_g1063510658_
                            (lambda (_g1063710651_)
                              ((lambda () (list _x10632_))))))
                       (let ((_g1063410688_
                              (lambda (_g1063710662_)
                                (if (gx#stx-pair? _g1063710662_)
                                    (let ((_e1063910665_
                                           (gx#syntax-e _g1063710662_)))
                                      (let ((_hd1064010669_
                                             (##car _e1063910665_))
                                            (_tl1064110672_
                                             (##cdr _e1063910665_)))
                                        (if (gx#identifier? _hd1064010669_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core::<sugar>::<sugar:2>[1]#_g28356_|
                                                 _hd1064010669_)
                                                ((lambda (_L10675_) _L10675_)
                                                 _tl1064110672_)
                                                (_g1063510658_ _g1063710662_))
                                            (_g1063510658_ _g1063710662_))))
                                    (_g1063510658_ _g1063710662_)))))
                         (_g1063410688_ _x10632_)))))))
            (let ((_g1015010208_
                   (lambda (_g1015110204_)
                     (gx#raise-syntax-error '#f '"Bad syntax" _g1015110204_))))
              (let ((_g1014910558_
                     (lambda (_g1015110212_)
                       (if (gx#stx-pair? _g1015110212_)
                           (let ((_e1017110215_ (gx#syntax-e _g1015110212_)))
                             (let ((_hd1017210219_ (##car _e1017110215_))
                                   (_tl1017310222_ (##cdr _e1017110215_)))
                               (if (gx#stx-pair? _tl1017310222_)
                                   (let ((_e1017410225_
                                          (gx#syntax-e _tl1017310222_)))
                                     (let ((_hd1017510229_
                                            (##car _e1017410225_))
                                           (_tl1017610232_
                                            (##cdr _e1017410225_)))
                                       (if (gx#stx-pair/null? _hd1017510229_)
                                           (if (fx>= (gx#stx-length
                                                      _hd1017510229_)
                                                     '0)
                                               (let ((_g28348_
                                                      (gx#syntax-split-splice
                                                       _hd1017510229_
                                                       '0)))
                                                 (begin
                                                   (let ((_g28349_
                                                          (values-count
                                                           _g28348_)))
                                                     (if (not (fx= _g28349_ 2))
                                                         (error "Context expects 2 values"
                                                                _g28349_)))
                                                   (let ((_target1017710235_
                                                          (values-ref
                                                           _g28348_
                                                           0))
                                                         (_tl1017910238_
                                                          (values-ref
                                                           _g28348_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl1017910238_)
                                                         (letrec ((_loop1018010241_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd1017810245_
                                    _e1018410248_
                                    _hd1018510250_)
                             (if (gx#stx-pair? _hd1017810245_)
                                 (let ((_e1018110253_
                                        (gx#syntax-e _hd1017810245_)))
                                   (let ((_lp-hd1018210257_
                                          (##car _e1018110253_))
                                         (_lp-tl1018310260_
                                          (##cdr _e1018110253_)))
                                     (if (gx#stx-pair? _lp-hd1018210257_)
                                         (let ((_e1018810263_
                                                (gx#syntax-e
                                                 _lp-hd1018210257_)))
                                           (let ((_hd1018910267_
                                                  (##car _e1018810263_))
                                                 (_tl1019010270_
                                                  (##cdr _e1018810263_)))
                                             (if (gx#stx-pair? _tl1019010270_)
                                                 (let ((_e1019110273_
                                                        (gx#syntax-e
                                                         _tl1019010270_)))
                                                   (let ((_hd1019210277_
                                                          (##car _e1019110273_))
                                                         (_tl1019310280_
                                                          (##cdr _e1019110273_)))
                                                     (if (gx#stx-null?
                                                          _tl1019310280_)
                                                         (_loop1018010241_
                                                          _lp-tl1018310260_
                                                          (cons _hd1019210277_
                                                                _e1018410248_)
                                                          (cons _hd1018910267_
                                                                _hd1018510250_))
                                                         (_g1015010208_
                                                          _g1015110212_))))
                                                 (_g1015010208_
                                                  _g1015110212_))))
                                         (_g1015010208_ _g1015110212_))))
                                 (let ((_e1018610283_ (reverse _e1018410248_))
                                       (_hd1018710286_
                                        (reverse _hd1018510250_)))
                                   (if (gx#stx-pair/null? _tl1017610232_)
                                       (if (fx>= (gx#stx-length _tl1017610232_)
                                                 '0)
                                           (let ((_g28350_
                                                  (gx#syntax-split-splice
                                                   _tl1017610232_
                                                   '0)))
                                             (begin
                                               (let ((_g28351_
                                                      (values-count _g28350_)))
                                                 (if (not (fx= _g28351_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28351_)))
                                               (let ((_target1019410289_
                                                      (values-ref _g28350_ 0))
                                                     (_tl1019610292_
                                                      (values-ref _g28350_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl1019610292_)
                                                     (letrec ((_loop1019710295_
                                                               (lambda (_hd1019510299_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body1020110302_)
                         (if (gx#stx-pair? _hd1019510299_)
                             (let ((_e1019810305_
                                    (gx#syntax-e _hd1019510299_)))
                               (let ((_lp-hd1019910309_ (##car _e1019810305_))
                                     (_lp-tl1020010312_ (##cdr _e1019810305_)))
                                 (_loop1019710295_
                                  _lp-tl1020010312_
                                  (cons _lp-hd1019910309_ _body1020110302_))))
                             (let ((_body1020210315_
                                    (reverse _body1020110302_)))
                               ((lambda (_L10319_ _L10321_ _L10322_)
                                  (if (gx#stx-andmap
                                       _let-head?10145_
                                       (begin
                                         '#!void
                                         (foldr (lambda (_g1034510348_
                                                         _g1034610351_)
                                                  (cons _g1034510348_
                                                        _g1034610351_))
                                                '()
                                                _L10322_)))
                                      (let ((_g1035410387_
                                             (lambda (_g1035510383_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1035510383_))))
                                        (let ((_g1035310538_
                                               (lambda (_g1035510391_)
                                                 (if (gx#stx-pair?
                                                      _g1035510391_)
                                                     (let ((_e1035810394_
                                                            (gx#syntax-e
                                                             _g1035510391_)))
                                                       (let ((_hd1035910398_
                                                              (##car _e1035810394_))
                                                             (_tl1036010401_
                                                              (##cdr _e1035810394_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd1035910398_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd1035910398_)
                               '0)
                         (let ((_g28352_
                                (gx#syntax-split-splice _hd1035910398_ '0)))
                           (begin
                             (let ((_g28353_ (values-count _g28352_)))
                               (if (not (fx= _g28353_ 2))
                                   (error "Context expects 2 values"
                                          _g28353_)))
                             (let ((_target1036110404_ (values-ref _g28352_ 0))
                                   (_tl1036310407_ (values-ref _g28352_ 1)))
                               (if (gx#stx-null? _tl1036310407_)
                                   (letrec ((_loop1036410410_
                                             (lambda (_hd1036210414_
                                                      _$e1036810417_)
                                               (if (gx#stx-pair?
                                                    _hd1036210414_)
                                                   (let ((_e1036510420_
                                                          (gx#syntax-e
                                                           _hd1036210414_)))
                                                     (let ((_lp-hd1036610424_
                                                            (##car _e1036510420_))
                                                           (_lp-tl1036710427_
                                                            (##cdr _e1036510420_)))
                                                       (_loop1036410410_
                                                        _lp-tl1036710427_
                                                        (cons _lp-hd1036610424_
                                                              _$e1036810417_))))
                                                   (let ((_$e1036910430_
                                                          (reverse _$e1036810417_)))
                                                     (if (gx#stx-pair?
                                                          _tl1036010401_)
                                                         (let ((_e1037010434_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1036010401_)))
                   (let ((_hd1037110438_ (##car _e1037010434_))
                         (_tl1037210441_ (##cdr _e1037010434_)))
                     (if (gx#stx-pair/null? _hd1037110438_)
                         (if (fx>= (gx#stx-length _hd1037110438_) '0)
                             (let ((_g28354_
                                    (gx#syntax-split-splice
                                     _hd1037110438_
                                     '0)))
                               (begin
                                 (let ((_g28355_ (values-count _g28354_)))
                                   (if (not (fx= _g28355_ 2))
                                       (error "Context expects 2 values"
                                              _g28355_)))
                                 (let ((_target1037310444_
                                        (values-ref _g28354_ 0))
                                       (_tl1037510447_
                                        (values-ref _g28354_ 1)))
                                   (if (gx#stx-null? _tl1037510447_)
                                       (letrec ((_loop1037610450_
                                                 (lambda (_hd1037410454_
                                                          _hd-bind1038010457_)
                                                   (if (gx#stx-pair?
                                                        _hd1037410454_)
                                                       (let ((_e1037710460_
                                                              (gx#syntax-e
                                                               _hd1037410454_)))
                                                         (let ((_lp-hd1037810464_
                                                                (##car _e1037710460_))
                                                               (_lp-tl1037910467_
                                                                (##cdr _e1037710460_)))
                                                           (_loop1037610450_
                                                            _lp-tl1037910467_
                                                            (cons _lp-hd1037810464_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd-bind1038010457_))))
               (let ((_hd-bind1038110470_ (reverse _hd-bind1038010457_)))
                 (if (gx#stx-null? _tl1037210441_)
                     ((lambda (_L10474_ _L10476_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'let-values)
                                (cons (begin
                                        (gx#syntax-check-splice-targets
                                         _L10321_
                                         _L10476_)
                                        (foldr (lambda (_g1049910510_
                                                        _g1050010513_
                                                        _g1050110515_)
                                                 (cons (cons (cons _g1050010513_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons _g1049910510_ '()))
               _g1050110515_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()
                                               _L10321_
                                               _L10476_))
                                      (cons (cons (gx#datum->syntax '#f 'and)
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1050210518_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1050310521_)
                     (cons _g1050210518_ _g1050310521_))
                   (cons (cons (gx#datum->syntax '#f 'let-values)
                               (cons (begin
                                       (gx#syntax-check-splice-targets
                                        _L10476_
                                        _L10474_)
                                       (foldr (lambda (_g1050410524_
                                                       _g1050510527_
                                                       _g1050610529_)
                                                (cons (cons _g1050510527_
                                                            (cons _g1050410524_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _g1050610529_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _L10476_
                                              _L10474_))
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g1050710532_
                                                       _g1050810535_)
                                                (cons _g1050710532_
                                                      _g1050810535_))
                                              '()
                                              _L10319_))))
                         '())
                   _L10476_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                      _hd-bind1038110470_
                      _$e1036910430_)
                     (_g1035410387_ _g1035510391_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop1037610450_
                                          _target1037310444_
                                          '()))
                                       (_g1035410387_ _g1035510391_)))))
                             (_g1035410387_ _g1035510391_))
                         (_g1035410387_ _g1035510391_))))
                 (_g1035410387_ _g1035510391_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop1036410410_ _target1036110404_ '()))
                                   (_g1035410387_ _g1035510391_)))))
                         (_g1035410387_ _g1035510391_))
                     (_g1035410387_ _g1035510391_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1035410387_
                                                      _g1035510391_)))))
                                          (_g1035310538_
                                           (list (gx#gentemps
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1054110544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1054210547_)
                     (cons _g1054110544_ _g1054210547_))
                   '()
                   _L10322_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (gx#stx-map
                                                  _let-head10147_
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1054910552_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1055010555_)
                     (cons _g1054910552_ _g1055010555_))
                   '()
                   _L10322_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_g1015010208_ _g1015110212_)))
                                _body1020210315_
                                _e1018610283_
                                _hd1018710286_))))))
               (_loop1019710295_ _target1019410289_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1015010208_
                                                      _g1015110212_)))))
                                           (_g1015010208_ _g1015110212_))
                                       (_g1015010208_ _g1015110212_)))))))
                   (_loop1018010241_ _target1017710235_ '() '()))
                 (_g1015010208_ _g1015110212_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1015010208_ _g1015110212_))
                                           (_g1015010208_ _g1015110212_))))
                                   (_g1015010208_ _g1015110212_))))
                           (_g1015010208_ _g1015110212_)))))
                (let ((_g1014810628_
                       (lambda (_g1015110562_)
                         (if (gx#stx-pair? _g1015110562_)
                             (let ((_e1015610565_ (gx#syntax-e _g1015110562_)))
                               (let ((_hd1015710569_ (##car _e1015610565_))
                                     (_tl1015810572_ (##cdr _e1015610565_)))
                                 (if (gx#stx-pair? _tl1015810572_)
                                     (let ((_e1015910575_
                                            (gx#syntax-e _tl1015810572_)))
                                       (let ((_hd1016010579_
                                              (##car _e1015910575_))
                                             (_tl1016110582_
                                              (##cdr _e1015910575_)))
                                         (if (gx#stx-pair? _hd1016010579_)
                                             (let ((_e1016210585_
                                                    (gx#syntax-e
                                                     _hd1016010579_)))
                                               (let ((_hd1016310589_
                                                      (##car _e1016210585_))
                                                     (_tl1016410592_
                                                      (##cdr _e1016210585_)))
                                                 (if (gx#stx-pair?
                                                      _tl1016410592_)
                                                     (let ((_e1016510595_
                                                            (gx#syntax-e
                                                             _tl1016410592_)))
                                                       (let ((_hd1016610599_
                                                              (##car _e1016510595_))
                                                             (_tl1016710602_
                                                              (##cdr _e1016510595_)))
                                                         (if (gx#stx-null?
                                                              _tl1016710602_)
                                                             ((lambda (_L10605_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L10607_
                               _L10608_
                               _L10609_)
                        (if (_let-head?10145_ _L10608_)
                            (cons _L10609_
                                  (cons (cons (cons _L10608_
                                                    (cons _L10607_ '()))
                                              '())
                                        _L10605_))
                            (_g1014910558_ _g1015110562_)))
                      _tl1016110582_
                      _hd1016610599_
                      _hd1016310589_
                      _hd1015710569_)
                     (_g1014910558_ _g1015110562_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1014910558_
                                                      _g1015110562_))))
                                             (_g1014910558_ _g1015110562_))))
                                     (_g1014910558_ _g1015110562_))))
                             (_g1014910558_ _g1015110562_)))))
                  (_g1014810628_ _stx10142_))))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#alet*|
      (lambda (_$stx10756_)
        (let ((_g1076110806_
               (lambda (_g1076210802_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1076210802_))))
          (let ((_g1076010907_
                 (lambda (_g1076210810_)
                   (if (gx#stx-pair? _g1076210810_)
                       (let ((_e1078310813_ (gx#syntax-e _g1076210810_)))
                         (let ((_hd1078410817_ (##car _e1078310813_))
                               (_tl1078510820_ (##cdr _e1078310813_)))
                           (if (gx#stx-pair? _tl1078510820_)
                               (let ((_e1078610823_
                                      (gx#syntax-e _tl1078510820_)))
                                 (let ((_hd1078710827_ (##car _e1078610823_))
                                       (_tl1078810830_ (##cdr _e1078610823_)))
                                   (if (gx#stx-pair? _hd1078710827_)
                                       (let ((_e1078910833_
                                              (gx#syntax-e _hd1078710827_)))
                                         (let ((_hd1079010837_
                                                (##car _e1078910833_))
                                               (_tl1079110840_
                                                (##cdr _e1078910833_)))
                                           (if (gx#stx-pair/null?
                                                _tl1078810830_)
                                               (if (fx>= (gx#stx-length
                                                          _tl1078810830_)
                                                         '0)
                                                   (let ((_g28358_
                                                          (gx#syntax-split-splice
                                                           _tl1078810830_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28359_
                                                              (values-count
                                                               _g28358_)))
                                                         (if (not (fx= _g28359_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28359_)))
               (let ((_target1079210843_ (values-ref _g28358_ 0))
                     (_tl1079410846_ (values-ref _g28358_ 1)))
                 (if (gx#stx-null? _tl1079410846_)
                     (letrec ((_loop1079510849_
                               (lambda (_hd1079310853_ _body1079910856_)
                                 (if (gx#stx-pair? _hd1079310853_)
                                     (let ((_e1079610859_
                                            (gx#syntax-e _hd1079310853_)))
                                       (let ((_lp-hd1079710863_
                                              (##car _e1079610859_))
                                             (_lp-tl1079810866_
                                              (##cdr _e1079610859_)))
                                         (_loop1079510849_
                                          _lp-tl1079810866_
                                          (cons _lp-hd1079710863_
                                                _body1079910856_))))
                                     (let ((_body1080010869_
                                            (reverse _body1079910856_)))
                                       ((lambda (_L10873_
                                                 _L10875_
                                                 _L10876_
                                                 _L10877_)
                                          (cons (gx#datum->syntax '#f 'alet)
                                                (cons (cons _L10876_ '())
                                                      (cons (cons _L10877_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L10875_
                                (begin
                                  '#!void
                                  (foldr (lambda (_g1089810901_ _g1089910904_)
                                           (cons _g1089810901_ _g1089910904_))
                                         '()
                                         _L10873_))))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body1080010869_
                                        _tl1079110840_
                                        _hd1079010837_
                                        _hd1078410817_))))))
                       (_loop1079510849_ _target1079210843_ '()))
                     (_g1076110806_ _g1076210810_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1076110806_
                                                    _g1076210810_))
                                               (_g1076110806_ _g1076210810_))))
                                       (_g1076110806_ _g1076210810_))))
                               (_g1076110806_ _g1076210810_))))
                       (_g1076110806_ _g1076210810_)))))
            (let ((_g1075910989_
                   (lambda (_g1076210911_)
                     (if (gx#stx-pair? _g1076210911_)
                         (let ((_e1076410914_ (gx#syntax-e _g1076210911_)))
                           (let ((_hd1076510918_ (##car _e1076410914_))
                                 (_tl1076610921_ (##cdr _e1076410914_)))
                             (if (gx#stx-pair? _tl1076610921_)
                                 (let ((_e1076710924_
                                        (gx#syntax-e _tl1076610921_)))
                                   (let ((_hd1076810928_ (##car _e1076710924_))
                                         (_tl1076910931_
                                          (##cdr _e1076710924_)))
                                     (if (gx#stx-null? _hd1076810928_)
                                         (if (gx#stx-pair/null? _tl1076910931_)
                                             (if (fx>= (gx#stx-length
                                                        _tl1076910931_)
                                                       '0)
                                                 (let ((_g28360_
                                                        (gx#syntax-split-splice
                                                         _tl1076910931_
                                                         '0)))
                                                   (begin
                                                     (let ((_g28361_
                                                            (values-count
                                                             _g28360_)))
                                                       (if (not (fx= _g28361_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g28361_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target1077010934_
                                                            (values-ref
                                                             _g28360_
                                                             0))
                                                           (_tl1077210937_
                                                            (values-ref
                                                             _g28360_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl1077210937_)
                                                           (letrec ((_loop1077310940_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd1077110944_ _body1077710947_)
                               (if (gx#stx-pair? _hd1077110944_)
                                   (let ((_e1077410950_
                                          (gx#syntax-e _hd1077110944_)))
                                     (let ((_lp-hd1077510954_
                                            (##car _e1077410950_))
                                           (_lp-tl1077610957_
                                            (##cdr _e1077410950_)))
                                       (_loop1077310940_
                                        _lp-tl1077610957_
                                        (cons _lp-hd1077510954_
                                              _body1077710947_))))
                                   (let ((_body1077810960_
                                          (reverse _body1077710947_)))
                                     ((lambda (_L10964_)
                                        (cons (gx#datum->syntax '#f 'let)
                                              (cons '()
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g1098010983_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1098110986_)
                       (cons _g1098010983_ _g1098110986_))
                     '()
                     _L10964_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _body1077810960_))))))
                     (_loop1077310940_ _target1077010934_ '()))
                   (_g1076010907_ _g1076210911_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1076010907_ _g1076210911_))
                                             (_g1076010907_ _g1076210911_))
                                         (_g1076010907_ _g1076210911_))))
                                 (_g1076010907_ _g1076210911_))))
                         (_g1076010907_ _g1076210911_)))))
              (_g1075910989_ _$stx10756_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#@list|
      (lambda (_$stx10995_)
        (let ((_g1100411061_
               (lambda (_g1100511057_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1100511057_))))
          (let ((_g1100311090_
                 (lambda (_g1100511065_)
                   (if (gx#stx-pair? _g1100511065_)
                       (let ((_e1105311068_ (gx#syntax-e _g1100511065_)))
                         (let ((_hd1105411072_ (##car _e1105311068_))
                               (_tl1105511075_ (##cdr _e1105311068_)))
                           ((lambda (_L11078_) _L11078_) _tl1105511075_)))
                       (_g1100411061_ _g1100511065_)))))
            (let ((_g1100211134_
                   (lambda (_g1100511094_)
                     (if (gx#stx-pair? _g1100511094_)
                         (let ((_e1104611097_ (gx#syntax-e _g1100511094_)))
                           (let ((_hd1104711101_ (##car _e1104611097_))
                                 (_tl1104811104_ (##cdr _e1104611097_)))
                             (if (gx#stx-pair? _tl1104811104_)
                                 (let ((_e1104911107_
                                        (gx#syntax-e _tl1104811104_)))
                                   (let ((_hd1105011111_ (##car _e1104911107_))
                                         (_tl1105111114_
                                          (##cdr _e1104911107_)))
                                     ((lambda (_L11117_ _L11119_ _L11120_)
                                        (cons (gx#datum->syntax '#f 'cons)
                                              (cons _L11119_
                                                    (cons (cons _L11120_
                                                                _L11117_)
                                                          '()))))
                                      _tl1105111114_
                                      _hd1105011111_
                                      _hd1104711101_)))
                                 (_g1100311090_ _g1100511094_))))
                         (_g1100311090_ _g1100511094_)))))
              (let ((_g1100111192_
                     (lambda (_g1100511138_)
                       (if (gx#stx-pair? _g1100511138_)
                           (let ((_e1103411141_ (gx#syntax-e _g1100511138_)))
                             (let ((_hd1103511145_ (##car _e1103411141_))
                                   (_tl1103611148_ (##cdr _e1103411141_)))
                               (if (gx#stx-pair? _tl1103611148_)
                                   (let ((_e1103711151_
                                          (gx#syntax-e _tl1103611148_)))
                                     (let ((_hd1103811155_
                                            (##car _e1103711151_))
                                           (_tl1103911158_
                                            (##cdr _e1103711151_)))
                                       (if (gx#stx-pair? _tl1103911158_)
                                           (let ((_e1104011161_
                                                  (gx#syntax-e
                                                   _tl1103911158_)))
                                             (let ((_hd1104111165_
                                                    (##car _e1104011161_))
                                                   (_tl1104211168_
                                                    (##cdr _e1104011161_)))
                                               ((lambda (_L11171_
                                                         _L11173_
                                                         _L11174_
                                                         _L11175_)
                                                  (if (gx#ellipsis? _L11173_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'foldr)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'cons)
                          (cons (cons _L11175_ _L11171_) (cons _L11174_ '()))))
              (_g1100211134_ _g1100511138_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl1104211168_
                                                _hd1104111165_
                                                _hd1103811155_
                                                _hd1103511145_)))
                                           (_g1100211134_ _g1100511138_))))
                                   (_g1100211134_ _g1100511138_))))
                           (_g1100211134_ _g1100511138_)))))
                (let ((_g1100011246_
                       (lambda (_g1100511196_)
                         (if (gx#stx-pair? _g1100511196_)
                             (let ((_e1102111199_ (gx#syntax-e _g1100511196_)))
                               (let ((_hd1102211203_ (##car _e1102111199_))
                                     (_tl1102311206_ (##cdr _e1102111199_)))
                                 (if (gx#stx-pair? _tl1102311206_)
                                     (let ((_e1102411209_
                                            (gx#syntax-e _tl1102311206_)))
                                       (let ((_hd1102511213_
                                              (##car _e1102411209_))
                                             (_tl1102611216_
                                              (##cdr _e1102411209_)))
                                         (if (gx#stx-pair? _tl1102611216_)
                                             (let ((_e1102711219_
                                                    (gx#syntax-e
                                                     _tl1102611216_)))
                                               (let ((_hd1102811223_
                                                      (##car _e1102711219_))
                                                     (_tl1102911226_
                                                      (##cdr _e1102711219_)))
                                                 (if (gx#stx-null?
                                                      _tl1102911226_)
                                                     ((lambda (_L11229_
                                                               _L11231_)
                                                        (if (gx#ellipsis?
                                                             _L11229_)
                                                            _L11231_
                                                            (_g1100111192_
                                                             _g1100511196_)))
                                                      _hd1102811223_
                                                      _hd1102511213_)
                                                     (_g1100111192_
                                                      _g1100511196_))))
                                             (_g1100111192_ _g1100511196_))))
                                     (_g1100111192_ _g1100511196_))))
                             (_g1100111192_ _g1100511196_)))))
                  (let ((_g1099911298_
                         (lambda (_g1100511250_)
                           (if (gx#stx-pair? _g1100511250_)
                               (let ((_e1101011253_
                                      (gx#syntax-e _g1100511250_)))
                                 (let ((_hd1101111257_ (##car _e1101011253_))
                                       (_tl1101211260_ (##cdr _e1101011253_)))
                                   (if (gx#stx-pair? _tl1101211260_)
                                       (let ((_e1101311263_
                                              (gx#syntax-e _tl1101211260_)))
                                         (let ((_hd1101411267_
                                                (##car _e1101311263_))
                                               (_tl1101511270_
                                                (##cdr _e1101311263_)))
                                           (if (gx#stx-datum? _hd1101411267_)
                                               (if (equal? (gx#stx-e
                                                            _hd1101411267_)
                                                           '::)
                                                   (if (gx#stx-pair?
                                                        _tl1101511270_)
                                                       (let ((_e1101611273_
                                                              (gx#syntax-e
                                                               _tl1101511270_)))
                                                         (let ((_hd1101711277_
                                                                (##car _e1101611273_))
                                                               (_tl1101811280_
                                                                (##cdr _e1101611273_)))
                                                           (if (gx#stx-null?
                                                                _tl1101811280_)
                                                               ((lambda (_L11283_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L11283_)
                        _hd1101711277_)
                       (_g1100011246_ _g1100511250_))))
               (_g1100011246_ _g1100511250_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1100011246_
                                                    _g1100511250_))
                                               (_g1100011246_ _g1100511250_))))
                                       (_g1100011246_ _g1100511250_))))
                               (_g1100011246_ _g1100511250_)))))
                    (let ((_g1099811319_
                           (lambda (_g1100511302_)
                             (if (gx#stx-pair? _g1100511302_)
                                 (let ((_e1100611305_
                                        (gx#syntax-e _g1100511302_)))
                                   (let ((_hd1100711309_ (##car _e1100611305_))
                                         (_tl1100811312_
                                          (##cdr _e1100611305_)))
                                     (if (gx#stx-null? _tl1100811312_)
                                         ((lambda ()
                                            (cons (gx#datum->syntax '#f 'quote)
                                                  (cons '() '()))))
                                         (_g1099911298_ _g1100511302_))))
                                 (_g1099911298_ _g1100511302_)))))
                      (_g1099811319_ _$stx10995_))))))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#quasiquote|
      (lambda (_stx11323_)
        (letrec ((_simple-quote?11326_
                  (lambda (_e12018_)
                    (let ((_g1202612063_
                           (lambda (_g1202712059_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1202712059_))))
                      (let ((_g1202512074_
                             (lambda (_g1202712067_) ((lambda () '#t)))))
                        (let ((_g1202412097_
                               (lambda (_g1202712078_)
                                 (if (gx#stx-box? _g1202712078_)
                                     (let ((_e1205712081_
                                            (unbox (gx#syntax-e
                                                    _g1202712078_))))
                                       ((lambda (_L12085_)
                                          (_simple-quote?11326_ _L12085_))
                                        _e1205712081_))
                                     (_g1202512074_ _g1202712078_)))))
                          (let ((_g1202312160_
                                 (lambda (_g1202712101_)
                                   (if (gx#stx-vector? _g1202712101_)
                                       (let ((_e1204612104_
                                              (vector->list
                                               (gx#syntax-e _g1202712101_))))
                                         (if (gx#stx-pair/null? _e1204612104_)
                                             (if (fx>= (gx#stx-length
                                                        _e1204612104_)
                                                       '0)
                                                 (let ((_g28362_
                                                        (gx#syntax-split-splice
                                                         _e1204612104_
                                                         '0)))
                                                   (begin
                                                     (let ((_g28363_
                                                            (values-count
                                                             _g28362_)))
                                                       (if (not (fx= _g28363_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g28363_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target1204712108_
                                                            (values-ref
                                                             _g28362_
                                                             0))
                                                           (_tl1204912111_
                                                            (values-ref
                                                             _g28362_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl1204912111_)
                                                           (letrec ((_loop1205012114_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd1204812118_ _e1205412121_)
                               (if (gx#stx-pair? _hd1204812118_)
                                   (let ((_e1205112124_
                                          (gx#syntax-e _hd1204812118_)))
                                     (let ((_lp-hd1205212128_
                                            (##car _e1205112124_))
                                           (_lp-tl1205312131_
                                            (##cdr _e1205112124_)))
                                       (_loop1205012114_
                                        _lp-tl1205312131_
                                        (cons _lp-hd1205212128_
                                              _e1205412121_))))
                                   (let ((_e1205512134_
                                          (reverse _e1205412121_)))
                                     ((lambda (_L12138_)
                                        (_simple-quote?11326_
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g1215112154_
                                                           _g1215212157_)
                                                    (cons _g1215112154_
                                                          _g1215212157_))
                                                  '()
                                                  _L12138_))))
                                      _e1205512134_))))))
                     (_loop1205012114_ _target1204712108_ '()))
                   (_g1202412097_ _g1202712101_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1202412097_ _g1202712101_))
                                             (_g1202412097_ _g1202712101_)))
                                       (_g1202412097_ _g1202712101_)))))
                            (let ((_g1202212190_
                                   (lambda (_g1202712164_)
                                     (if (gx#stx-pair? _g1202712164_)
                                         (let ((_e1204212167_
                                                (gx#syntax-e _g1202712164_)))
                                           (let ((_hd1204312171_
                                                  (##car _e1204212167_))
                                                 (_tl1204412174_
                                                  (##cdr _e1204212167_)))
                                             ((lambda (_L12177_ _L12179_)
                                                (if (_simple-quote?11326_
                                                     _L12179_)
                                                    (_simple-quote?11326_
                                                     _L12177_)
                                                    '#f))
                                              _tl1204412174_
                                              _hd1204312171_)))
                                         (_g1202312160_ _g1202712164_)))))
                              (let ((_g1202112221_
                                     (lambda (_g1202712194_)
                                       (if (gx#stx-pair? _g1202712194_)
                                           (let ((_e1203412197_
                                                  (gx#syntax-e _g1202712194_)))
                                             (let ((_hd1203512201_
                                                    (##car _e1203412197_))
                                                   (_tl1203612204_
                                                    (##cdr _e1203412197_)))
                                               (if (gx#identifier?
                                                    _hd1203512201_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core::<sugar>::<sugar:2>[1]#_g28364_|
                                                        _hd1203512201_)
                                                       (if (gx#stx-pair?
                                                            _tl1203612204_)
                                                           (let ((_e1203712207_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1203612204_)))
                     (let ((_hd1203812211_ (##car _e1203712207_))
                           (_tl1203912214_ (##cdr _e1203712207_)))
                       (if (gx#stx-null? _tl1203912214_)
                           ((lambda () '#f))
                           (_g1202212190_ _g1202712194_))))
                   (_g1202212190_ _g1202712194_))
               (_g1202212190_ _g1202712194_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1202212190_
                                                    _g1202712194_))))
                                           (_g1202212190_ _g1202712194_)))))
                                (let ((_g1202012252_
                                       (lambda (_g1202712225_)
                                         (if (gx#stx-pair? _g1202712225_)
                                             (let ((_e1202812228_
                                                    (gx#syntax-e
                                                     _g1202712225_)))
                                               (let ((_hd1202912232_
                                                      (##car _e1202812228_))
                                                     (_tl1203012235_
                                                      (##cdr _e1202812228_)))
                                                 (if (gx#identifier?
                                                      _hd1202912232_)
                                                     (if (gx#free-identifier=?
                                                          |gerbil/core::<sugar>::<sugar:2>[1]#_g28365_|
                                                          _hd1202912232_)
                                                         (if (gx#stx-pair?
                                                              _tl1203012235_)
                                                             (let ((_e1203112238_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1203012235_)))
                       (let ((_hd1203212242_ (##car _e1203112238_))
                             (_tl1203312245_ (##cdr _e1203112238_)))
                         (if (gx#stx-null? _tl1203312245_)
                             ((lambda () '#f))
                             (_g1202112221_ _g1202712225_))))
                     (_g1202112221_ _g1202712225_))
                 (_g1202112221_ _g1202712225_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1202112221_
                                                      _g1202712225_))))
                                             (_g1202112221_ _g1202712225_)))))
                                  (_g1202012252_ _e12018_))))))))))
                 (_generate11328_
                  (lambda (_e11390_ _d11392_)
                    (let ((_g1140111459_
                           (lambda (_g1140211455_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1140211455_))))
                      (let ((_g1140011476_
                             (lambda (_g1140211463_)
                               ((lambda (_L11466_)
                                  (cons (gx#datum->syntax '#f 'quote)
                                        (cons _L11466_ '())))
                                _g1140211463_))))
                        (let ((_g1139911528_
                               (lambda (_g1140211480_)
                                 (if (gx#stx-box? _g1140211480_)
                                     (let ((_e1145211483_
                                            (unbox (gx#syntax-e
                                                    _g1140211480_))))
                                       ((lambda (_L11487_)
                                          (let ((_g1149711505_
                                                 (lambda (_g1149811501_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1149811501_))))
                                            (let ((_g1149611524_
                                                   (lambda (_g1149811509_)
                                                     ((lambda (_L11512_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'box)
                        (cons _L11512_ '()))))
              _g1149811509_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1149611524_
                                               (_generate11328_
                                                _L11487_
                                                _d11392_)))))
                                        _e1145211483_))
                                     (_g1140011476_ _g1140211480_)))))
                          (let ((_g1139811622_
                                 (lambda (_g1140211532_)
                                   (if (gx#stx-vector? _g1140211532_)
                                       (let ((_e1144111535_
                                              (vector->list
                                               (gx#syntax-e _g1140211532_))))
                                         (if (gx#stx-pair/null? _e1144111535_)
                                             (if (fx>= (gx#stx-length
                                                        _e1144111535_)
                                                       '0)
                                                 (let ((_g28366_
                                                        (gx#syntax-split-splice
                                                         _e1144111535_
                                                         '0)))
                                                   (begin
                                                     (let ((_g28367_
                                                            (values-count
                                                             _g28366_)))
                                                       (if (not (fx= _g28367_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g28367_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target1144211539_
                                                            (values-ref
                                                             _g28366_
                                                             0))
                                                           (_tl1144411542_
                                                            (values-ref
                                                             _g28366_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl1144411542_)
                                                           (letrec ((_loop1144511545_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd1144311549_ _e1144911552_)
                               (if (gx#stx-pair? _hd1144311549_)
                                   (let ((_e1144611555_
                                          (gx#syntax-e _hd1144311549_)))
                                     (let ((_lp-hd1144711559_
                                            (##car _e1144611555_))
                                           (_lp-tl1144811562_
                                            (##cdr _e1144611555_)))
                                       (_loop1144511545_
                                        _lp-tl1144811562_
                                        (cons _lp-hd1144711559_
                                              _e1144911552_))))
                                   (let ((_e1145011565_
                                          (reverse _e1144911552_)))
                                     ((lambda (_L11569_)
                                        (let ((_g1158311591_
                                               (lambda (_g1158411587_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1158411587_))))
                                          (let ((_g1158211610_
                                                 (lambda (_g1158411595_)
                                                   ((lambda (_L11598_)
                                                      (let ()
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'list->vector)
                                                              (cons _L11598_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1158411595_))))
                                            (_g1158211610_
                                             (_generate11328_
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g1161311616_
                                                                _g1161411619_)
                                                         (cons _g1161311616_
                                                               _g1161411619_))
                                                       '()
                                                       _L11569_))
                                              _d11392_)))))
                                      _e1145011565_))))))
                     (_loop1144511545_ _target1144211539_ '()))
                   (_g1139911528_ _g1140211532_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1139911528_ _g1140211532_))
                                             (_g1139911528_ _g1140211532_)))
                                       (_g1139911528_ _g1140211532_)))))
                            (let ((_g1139711716_
                                   (lambda (_g1140211626_)
                                     (if (gx#stx-pair? _g1140211626_)
                                         (let ((_e1143711629_
                                                (gx#syntax-e _g1140211626_)))
                                           (let ((_hd1143811633_
                                                  (##car _e1143711629_))
                                                 (_tl1143911636_
                                                  (##cdr _e1143711629_)))
                                             ((lambda (_L11639_ _L11641_)
                                                (let ((_g1165211667_
                                                       (lambda (_g1165311663_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1165311663_))))
                                                  (let ((_g1165111712_
                                                         (lambda (_g1165311671_)
                                                           (if (gx#stx-pair?
                                                                _g1165311671_)
                                                               (let ((_e1165611674_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g1165311671_)))
                         (let ((_hd1165711678_ (##car _e1165611674_))
                               (_tl1165811681_ (##cdr _e1165611674_)))
                           (if (gx#stx-pair? _tl1165811681_)
                               (let ((_e1165911684_
                                      (gx#syntax-e _tl1165811681_)))
                                 (let ((_hd1166011688_ (##car _e1165911684_))
                                       (_tl1166111691_ (##cdr _e1165911684_)))
                                   (if (gx#stx-null? _tl1166111691_)
                                       ((lambda (_L11694_ _L11696_)
                                          (let ()
                                            (cons (gx#datum->syntax '#f 'cons)
                                                  (cons _L11696_
                                                        (cons _L11694_ '())))))
                                        _hd1166011688_
                                        _hd1165711678_)
                                       (_g1165211667_ _g1165311671_))))
                               (_g1165211667_ _g1165311671_))))
                       (_g1165211667_ _g1165311671_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1165111712_
                                                     (list (_generate11328_
                                                            _L11641_
                                                            _d11392_)
                                                           (_generate11328_
                                                            _L11639_
                                                            _d11392_))))))
                                              _tl1143911636_
                                              _hd1143811633_)))
                                         (_g1139811622_ _g1140211626_)))))
                              (let ((_g1139611801_
                                     (lambda (_g1140211720_)
                                       (if (gx#stx-pair? _g1140211720_)
                                           (let ((_e1142611723_
                                                  (gx#syntax-e _g1140211720_)))
                                             (let ((_hd1142711727_
                                                    (##car _e1142611723_))
                                                   (_tl1142811730_
                                                    (##cdr _e1142611723_)))
                                               (if (gx#stx-pair?
                                                    _hd1142711727_)
                                                   (let ((_e1142911733_
                                                          (gx#syntax-e
                                                           _hd1142711727_)))
                                                     (let ((_hd1143011737_
                                                            (##car _e1142911733_))
                                                           (_tl1143111740_
                                                            (##cdr _e1142911733_)))
                                                       (if (gx#identifier?
                                                            _hd1143011737_)
                                                           (if (gx#free-identifier=?
                                                                |gerbil/core::<sugar>::<sugar:2>[1]#_g28368_|
                                                                _hd1143011737_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1143111740_)
                           (let ((_e1143211743_ (gx#syntax-e _tl1143111740_)))
                             (let ((_hd1143311747_ (##car _e1143211743_))
                                   (_tl1143411750_ (##cdr _e1143211743_)))
                               (if (gx#stx-null? _tl1143411750_)
                                   ((lambda (_L11753_ _L11755_)
                                      (if (fxzero? _d11392_)
                                          (let ((_g1177011778_
                                                 (lambda (_g1177111774_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1177111774_))))
                                            (let ((_g1176911797_
                                                   (lambda (_g1177111782_)
                                                     ((lambda (_L11785_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'foldr)
                        (cons (gx#datum->syntax '#f 'cons)
                              (cons _L11785_ (cons _L11755_ '()))))))
              _g1177111782_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1176911797_
                                               (_generate11328_
                                                _L11753_
                                                _d11392_))))
                                          (_g1139711716_ _g1140211720_)))
                                    _tl1142811730_
                                    _hd1143311747_)
                                   (_g1139711716_ _g1140211720_))))
                           (_g1139711716_ _g1140211720_))
                       (_g1139711716_ _g1140211720_))
                   (_g1139711716_ _g1140211720_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1139711716_
                                                    _g1140211720_))))
                                           (_g1139711716_ _g1140211720_)))))
                                (let ((_g1139511872_
                                       (lambda (_g1140211805_)
                                         (if (gx#stx-pair? _g1140211805_)
                                             (let ((_e1141811808_
                                                    (gx#syntax-e
                                                     _g1140211805_)))
                                               (let ((_hd1141911812_
                                                      (##car _e1141811808_))
                                                     (_tl1142011815_
                                                      (##cdr _e1141811808_)))
                                                 (if (gx#identifier?
                                                      _hd1141911812_)
                                                     (if (gx#free-identifier=?
                                                          |gerbil/core::<sugar>::<sugar:2>[1]#_g28369_|
                                                          _hd1141911812_)
                                                         (if (gx#stx-pair?
                                                              _tl1142011815_)
                                                             (let ((_e1142111818_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1142011815_)))
                       (let ((_hd1142211822_ (##car _e1142111818_))
                             (_tl1142311825_ (##cdr _e1142111818_)))
                         (if (gx#stx-null? _tl1142311825_)
                             ((lambda (_L11828_)
                                (if (fxzero? _d11392_)
                                    (cons (gx#datum->syntax '#f 'foldr)
                                          (cons (gx#datum->syntax '#f 'cons)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons '() '()))
                                                      (cons _L11828_ '()))))
                                    (let ((_g1184111849_
                                           (lambda (_g1184211845_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1184211845_))))
                                      (let ((_g1184011868_
                                             (lambda (_g1184211853_)
                                               ((lambda (_L11856_)
                                                  (let ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'list)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons (gx#datum->syntax '#f 'unquote-splicing)
                                    '()))
                        (cons _L11856_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1184211853_))))
                                        (_g1184011868_
                                         (_generate11328_
                                          _L11828_
                                          (fx1- _d11392_)))))))
                              _hd1142211822_)
                             (_g1139611801_ _g1140211805_))))
                     (_g1139611801_ _g1140211805_))
                 (_g1139611801_ _g1140211805_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1139611801_
                                                      _g1140211805_))))
                                             (_g1139611801_ _g1140211805_)))))
                                  (let ((_g1139411943_
                                         (lambda (_g1140211876_)
                                           (if (gx#stx-pair? _g1140211876_)
                                               (let ((_e1141111879_
                                                      (gx#syntax-e
                                                       _g1140211876_)))
                                                 (let ((_hd1141211883_
                                                        (##car _e1141111879_))
                                                       (_tl1141311886_
                                                        (##cdr _e1141111879_)))
                                                   (if (gx#identifier?
                                                        _hd1141211883_)
                                                       (if (gx#free-identifier=?
                                                            |gerbil/core::<sugar>::<sugar:2>[1]#_g28370_|
                                                            _hd1141211883_)
                                                           (if (gx#stx-pair?
                                                                _tl1141311886_)
                                                               (let ((_e1141411889_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1141311886_)))
                         (let ((_hd1141511893_ (##car _e1141411889_))
                               (_tl1141611896_ (##cdr _e1141411889_)))
                           (if (gx#stx-null? _tl1141611896_)
                               ((lambda (_L11899_)
                                  (if (fxzero? _d11392_)
                                      _L11899_
                                      (let ((_g1191211920_
                                             (lambda (_g1191311916_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1191311916_))))
                                        (let ((_g1191111939_
                                               (lambda (_g1191311924_)
                                                 ((lambda (_L11927_)
                                                    (let ()
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'list)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons (gx#datum->syntax '#f 'unquote) '()))
                          (cons _L11927_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1191311924_))))
                                          (_g1191111939_
                                           (_generate11328_
                                            _L11899_
                                            (fx1- _d11392_)))))))
                                _hd1141511893_)
                               (_g1139511872_ _g1140211876_))))
                       (_g1139511872_ _g1140211876_))
                   (_g1139511872_ _g1140211876_))
               (_g1139511872_ _g1140211876_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1139511872_
                                                _g1140211876_)))))
                                    (let ((_g1139312014_
                                           (lambda (_g1140211947_)
                                             (if (gx#stx-pair? _g1140211947_)
                                                 (let ((_e1140411950_
                                                        (gx#syntax-e
                                                         _g1140211947_)))
                                                   (let ((_hd1140511954_
                                                          (##car _e1140411950_))
                                                         (_tl1140611957_
                                                          (##cdr _e1140411950_)))
                                                     (if (gx#identifier?
                                                          _hd1140511954_)
                                                         (if (gx#free-identifier=?
                                                              |gerbil/core::<sugar>::<sugar:2>[1]#_g28371_|
                                                              _hd1140511954_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1140611957_)
                         (let ((_e1140711960_ (gx#syntax-e _tl1140611957_)))
                           (let ((_hd1140811964_ (##car _e1140711960_))
                                 (_tl1140911967_ (##cdr _e1140711960_)))
                             (if (gx#stx-null? _tl1140911967_)
                                 ((lambda (_L11970_)
                                    (let ((_g1198311991_
                                           (lambda (_g1198411987_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1198411987_))))
                                      (let ((_g1198212010_
                                             (lambda (_g1198411995_)
                                               ((lambda (_L11998_)
                                                  (let ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'list)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons (gx#datum->syntax '#f 'quasiquote) '()))
                        (cons _L11998_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1198411995_))))
                                        (_g1198212010_
                                         (_generate11328_
                                          _L11970_
                                          (fx1+ _d11392_))))))
                                  _hd1140811964_)
                                 (_g1139411943_ _g1140211947_))))
                         (_g1139411943_ _g1140211947_))
                     (_g1139411943_ _g1140211947_))
                 (_g1139411943_ _g1140211947_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1139411943_
                                                  _g1140211947_)))))
                                      (_g1139312014_ _e11390_)))))))))))))
          (let ((_g1133011344_
                 (lambda (_g1133111340_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g1133111340_))))
            (let ((_g1132911386_
                   (lambda (_g1133111348_)
                     (if (gx#stx-pair? _g1133111348_)
                         (let ((_e1133311351_ (gx#syntax-e _g1133111348_)))
                           (let ((_hd1133411355_ (##car _e1133311351_))
                                 (_tl1133511358_ (##cdr _e1133311351_)))
                             (if (gx#stx-pair? _tl1133511358_)
                                 (let ((_e1133611361_
                                        (gx#syntax-e _tl1133511358_)))
                                   (let ((_hd1133711365_ (##car _e1133611361_))
                                         (_tl1133811368_
                                          (##cdr _e1133611361_)))
                                     (if (gx#stx-null? _tl1133811368_)
                                         ((lambda (_L11371_)
                                            (if (_simple-quote?11326_ _L11371_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L11371_ '()))
                                                (_generate11328_ _L11371_ '0)))
                                          _hd1133711365_)
                                         (_g1133011344_ _g1133111348_))))
                                 (_g1133011344_ _g1133111348_))))
                         (_g1133011344_ _g1133111348_)))))
              (_g1132911386_ _stx11323_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#delay|
      (lambda (_$stx12258_)
        (let ((_g1226312284_
               (lambda (_g1226412280_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1226412280_))))
          (let ((_g1226212325_
                 (lambda (_g1226412288_)
                   (if (gx#stx-pair? _g1226412288_)
                       (let ((_e1227312291_ (gx#syntax-e _g1226412288_)))
                         (let ((_hd1227412295_ (##car _e1227312291_))
                               (_tl1227512298_ (##cdr _e1227312291_)))
                           (if (gx#stx-pair? _tl1227512298_)
                               (let ((_e1227612301_
                                      (gx#syntax-e _tl1227512298_)))
                                 (let ((_hd1227712305_ (##car _e1227612301_))
                                       (_tl1227812308_ (##cdr _e1227612301_)))
                                   (if (gx#stx-null? _tl1227812308_)
                                       ((lambda (_L12311_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'make-promise)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda%)
                                                            (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L12311_ '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _hd1227712305_)
                                       (_g1226312284_ _g1226412288_))))
                               (_g1226312284_ _g1226412288_))))
                       (_g1226312284_ _g1226412288_)))))
            (let ((_g1226112365_
                   (lambda (_g1226412329_)
                     (if (gx#stx-pair? _g1226412329_)
                         (let ((_e1226612332_ (gx#syntax-e _g1226412329_)))
                           (let ((_hd1226712336_ (##car _e1226612332_))
                                 (_tl1226812339_ (##cdr _e1226612332_)))
                             (if (gx#stx-pair? _tl1226812339_)
                                 (let ((_e1226912342_
                                        (gx#syntax-e _tl1226812339_)))
                                   (let ((_hd1227012346_ (##car _e1226912342_))
                                         (_tl1227112349_
                                          (##cdr _e1226912342_)))
                                     (if (gx#stx-null? _tl1227112349_)
                                         ((lambda (_L12352_)
                                            (if (gx#stx-datum? _L12352_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L12352_ '()))
                                                (_g1226212325_ _g1226412329_)))
                                          _hd1227012346_)
                                         (_g1226212325_ _g1226412329_))))
                                 (_g1226212325_ _g1226412329_))))
                         (_g1226212325_ _g1226412329_)))))
              (_g1226112365_ _$stx12258_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#cut|
      (lambda (_stx12369_)
        (let ((_generate12372_
               (lambda (_rest12491_)
                 ((letrec ((_lp12494_
                            (lambda (_rest12497_ _hd12499_ _body12500_)
                              (let ((_g1250312515_
                                     (lambda (_g1250412511_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1250412511_))))
                                (let ((_g1250212526_
                                       (lambda (_g1250412519_)
                                         ((lambda ()
                                            (values (reverse _hd12499_)
                                                    (reverse _body12500_)
                                                    '#f))))))
                                  (let ((_g1250112612_
                                         (lambda (_g1250412530_)
                                           (if (gx#stx-pair? _g1250412530_)
                                               (let ((_e1250712533_
                                                      (gx#syntax-e
                                                       _g1250412530_)))
                                                 (let ((_hd1250812537_
                                                        (##car _e1250712533_))
                                                       (_tl1250912540_
                                                        (##cdr _e1250712533_)))
                                                   ((lambda (_L12543_ _L12545_)
                                                      (let ((_g1256212569_
                                                             (lambda (_g1256312565_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1256312565_))))
                                                        (let ((_g1256112580_
                                                               (lambda (_g1256312573_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda ()
                            (_lp12494_
                             _L12543_
                             _hd12499_
                             (cons _L12545_ _body12500_)))))))
                  (let ((_g1256012594_
                         (lambda (_g1256312584_)
                           (if (gx#identifier? _g1256312584_)
                               (if (gx#free-identifier=?
                                    |gerbil/core::<sugar>::<sugar:2>[1]#_g28374_|
                                    _g1256312584_)
                                   ((lambda ()
                                      (if (gx#stx-null? _L12543_)
                                          (let ((_tail12591_ (gx#genident)))
                                            (values (foldl cons
                                                           _tail12591_
                                                           _hd12499_)
                                                    (foldl cons
                                                           (list _tail12591_)
                                                           _body12500_)
                                                    '#t))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _stx12369_
                                           _L12545_))))
                                   (_g1256112580_ _g1256312584_))
                               (_g1256112580_ _g1256312584_)))))
                    (let ((_g1255912608_
                           (lambda (_g1256312598_)
                             (if (gx#identifier? _g1256312598_)
                                 (if (gx#free-identifier=?
                                      |gerbil/core::<sugar>::<sugar:2>[1]#_g28375_|
                                      _g1256312598_)
                                     ((lambda ()
                                        (let ((_arg12605_ (gx#genident)))
                                          (_lp12494_
                                           _L12543_
                                           (cons _arg12605_ _hd12499_)
                                           (cons _arg12605_ _body12500_)))))
                                     (_g1256012594_ _g1256312598_))
                                 (_g1256012594_ _g1256312598_)))))
                      (_g1255912608_ _L12545_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1250912540_
                                                    _hd1250812537_)))
                                               (_g1250212526_
                                                _g1250412530_)))))
                                    (_g1250112612_ _rest12497_)))))))
                    _lp12494_)
                  _rest12491_
                  '()
                  '()))))
          (let ((_g1237512386_
                 (lambda (_g1237612382_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g1237612382_))))
            (let ((_g1237412487_
                   (lambda (_g1237612390_)
                     (if (gx#stx-pair? _g1237612390_)
                         (let ((_e1237812393_ (gx#syntax-e _g1237612390_)))
                           (let ((_hd1237912397_ (##car _e1237812393_))
                                 (_tl1238012400_ (##cdr _e1237812393_)))
                             ((lambda (_L12403_)
                                (if (if (gx#stx-list? _L12403_)
                                        (not (gx#stx-null? _L12403_))
                                        '#f)
                                    (let ((_g28372_
                                           (_generate12372_ _L12403_)))
                                      (begin
                                        (let ((_g28373_
                                               (values-count _g28372_)))
                                          (if (not (fx= _g28373_ 3))
                                              (error "Context expects 3 values"
                                                     _g28373_)))
                                        (let ((_hd12416_
                                               (values-ref _g28372_ 0))
                                              (_body12418_
                                               (values-ref _g28372_ 1))
                                              (_tail?12419_
                                               (values-ref _g28372_ 2)))
                                          (let ((_g1242112429_
                                                 (lambda (_g1242212425_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1242212425_))))
                                            (let ((_g1242012483_
                                                   (lambda (_g1242212433_)
                                                     ((lambda (_L12436_)
                                                        (let ()
                                                          (let ((_g1244912457_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1245012453_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1245012453_))))
                    (let ((_g1244812479_
                           (lambda (_g1245012461_)
                             ((lambda (_L12464_)
                                (let ()
                                  (let ()
                                    (if _tail?12419_
                                        (cons (gx#datum->syntax '#f 'lambda%)
                                              (cons _L12436_
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'apply)
                        _L12464_)
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (gx#datum->syntax '#f 'lambda%)
                                              (cons _L12436_
                                                    (cons _L12464_ '())))))))
                              _g1245012461_))))
                      (_g1244812479_ _body12418_)))))
              _g1242212433_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1242012483_ _hd12416_))))))
                                    (_g1237512386_ _g1237612390_)))
                              _tl1238012400_)))
                         (_g1237512386_ _g1237612390_)))))
              (_g1237412487_ _stx12369_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#<>|
      (lambda (_$stx12617_)
        (let ((_g1262012627_
               (lambda (_g1262112623_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1262112623_))))
          (_g1262012627_ _$stx12617_))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#<...>|
      (lambda (_$stx12631_)
        (let ((_g1263412641_
               (lambda (_g1263512637_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1263512637_))))
          (_g1263412641_ _$stx12631_))))))
