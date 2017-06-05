(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gxc[1]#_g10177_| (gx#core-quote-syntax 'meta-state::t))
  (define |gxc[1]#_g10178_| (gx#core-quote-syntax 'meta-state::t))
  (define |gxc[1]#_g10179_| (gx#core-quote-syntax 'make-meta-state))
  (define |gxc[1]#_g10180_| (gx#core-quote-syntax 'meta-state?))
  (define |gxc[1]#_g10181_| (gx#core-quote-syntax 'meta-state-src))
  (define |gxc[1]#_g10182_| (gx#core-quote-syntax 'meta-state-n))
  (define |gxc[1]#_g10183_| (gx#core-quote-syntax 'meta-state-open))
  (define |gxc[1]#_g10184_| (gx#core-quote-syntax 'meta-state-blocks))
  (define |gxc[1]#_g10185_| (gx#core-quote-syntax 'meta-state-src-set!))
  (define |gxc[1]#_g10186_| (gx#core-quote-syntax 'meta-state-n-set!))
  (define |gxc[1]#_g10187_| (gx#core-quote-syntax 'meta-state-open-set!))
  (define |gxc[1]#_g10188_| (gx#core-quote-syntax 'meta-state-blocks-set!))
  (define |gxc[1]#_g10189_| (gx#core-quote-syntax 'meta-state-block::t))
  (define |gxc[1]#_g10190_| (gx#core-quote-syntax 'meta-state-block::t))
  (define |gxc[1]#_g10191_| (gx#core-quote-syntax 'make-meta-state-block))
  (define |gxc[1]#_g10192_| (gx#core-quote-syntax 'meta-state-block?))
  (define |gxc[1]#_g10193_| (gx#core-quote-syntax 'meta-state-block-ctx))
  (define |gxc[1]#_g10194_| (gx#core-quote-syntax 'meta-state-block-phi))
  (define |gxc[1]#_g10195_| (gx#core-quote-syntax 'meta-state-block-n))
  (define |gxc[1]#_g10196_| (gx#core-quote-syntax 'meta-state-block-code))
  (define |gxc[1]#_g10197_| (gx#core-quote-syntax 'meta-state-block-ctx-set!))
  (define |gxc[1]#_g10198_| (gx#core-quote-syntax 'meta-state-block-phi-set!))
  (define |gxc[1]#_g10199_| (gx#core-quote-syntax 'meta-state-block-n-set!))
  (define |gxc[1]#_g10200_| (gx#core-quote-syntax 'meta-state-block-code-set!))
  (begin
    (define |gxc[:0:]#defcompile-method|
      (lambda (_$stx2614_)
        (let ((_g26202699_
               (lambda (_g26212695_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g26212695_))))
          (let ((_g26192773_
                 (lambda (_g26212703_)
                   (if (gx#stx-pair? _g26212703_)
                       (let ((_e26822706_ (gx#syntax-e _g26212703_)))
                         (let ((_hd26832710_ (##car _e26822706_))
                               (_tl26842713_ (##cdr _e26822706_)))
                           (if (gx#stx-pair? _tl26842713_)
                               (let ((_e26852716_ (gx#syntax-e _tl26842713_)))
                                 (let ((_hd26862720_ (##car _e26852716_))
                                       (_tl26872723_ (##cdr _e26852716_)))
                                   (if (gx#stx-pair? _tl26872723_)
                                       (let ((_e26882726_
                                              (gx#syntax-e _tl26872723_)))
                                         (let ((_hd26892730_
                                                (##car _e26882726_))
                                               (_tl26902733_
                                                (##cdr _e26882726_)))
                                           (if (gx#stx-pair? _hd26892730_)
                                               (let ((_e26912736_
                                                      (gx#syntax-e
                                                       _hd26892730_)))
                                                 (let ((_hd26922740_
                                                        (##car _e26912736_))
                                                       (_tl26932743_
                                                        (##cdr _e26912736_)))
                                                   ((lambda (_L2746_
                                                             _L2748_
                                                             _L2749_
                                                             _L2750_
                                                             _L2751_)
                                                      (if (gx#identifier?
                                                           _L2750_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin)
                        (cons (cons _L2751_
                                    (cons '#f
                                          (cons (cons _L2749_ _L2748_)
                                                _L2746_)))
                              (cons (cons (gx#datum->syntax '#f 'define)
                                          (cons (cons _L2750_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'stx)
                                                            (gx#datum->syntax
                                                             '#f
                                                             'args)))
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'parameterize)
                                                            (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '#f
                                       'current-compile-methods)
                                      (cons (cons (gx#datum->syntax '#f 'force)
                                                  (cons _L2749_ '()))
                                            '()))
                                '())
                          (cons (cons (gx#datum->syntax '#f 'apply)
                                      (cons (gx#datum->syntax '#f 'compile-e)
                                            (cons (gx#datum->syntax '#f 'stx)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'args)
                                                        '()))))
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  (_g26202699_ _g26212703_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl26902733_
                                                    _tl26932743_
                                                    _hd26922740_
                                                    _hd26862720_
                                                    _hd26832710_)))
                                               (_g26202699_ _g26212703_))))
                                       (_g26202699_ _g26212703_))))
                               (_g26202699_ _g26212703_))))
                       (_g26202699_ _g26212703_)))))
            (let ((_g26182954_
                   (lambda (_g26212777_)
                     (if (gx#stx-pair? _g26212777_)
                         (let ((_e26392780_ (gx#syntax-e _g26212777_)))
                           (let ((_hd26402784_ (##car _e26392780_))
                                 (_tl26412787_ (##cdr _e26392780_)))
                             (if (gx#stx-pair? _tl26412787_)
                                 (let ((_e26422790_
                                        (gx#syntax-e _tl26412787_)))
                                   (let ((_hd26432794_ (##car _e26422790_))
                                         (_tl26442797_ (##cdr _e26422790_)))
                                     (if (gx#stx-datum? _hd26432794_)
                                         (if (equal? (gx#stx-e _hd26432794_)
                                                     '#f)
                                             (if (gx#stx-pair? _tl26442797_)
                                                 (let ((_e26452800_
                                                        (gx#syntax-e
                                                         _tl26442797_)))
                                                   (let ((_hd26462804_
                                                          (##car _e26452800_))
                                                         (_tl26472807_
                                                          (##cdr _e26452800_)))
                                                     (if (gx#stx-pair?
                                                          _hd26462804_)
                                                         (let ((_e26482810_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd26462804_)))
                   (let ((_hd26492814_ (##car _e26482810_))
                         (_tl26502817_ (##cdr _e26482810_)))
                     (if (gx#stx-pair/null? _tl26502817_)
                         (if (fx>= (gx#stx-length _tl26502817_) '0)
                             (let ((_g10173_
                                    (gx#syntax-split-splice _tl26502817_ '0)))
                               (begin
                                 (let ((_g10174_ (values-count _g10173_)))
                                   (if (not (fx= _g10174_ 2))
                                       (error "Context expects 2 values"
                                              _g10174_)))
                                 (let ((_target26512820_
                                        (values-ref _g10173_ 0))
                                       (_tl26532823_ (values-ref _g10173_ 1)))
                                   (if (gx#stx-null? _tl26532823_)
                                       (letrec ((_loop26542826_
                                                 (lambda (_hd26522830_
                                                          _super26582833_)
                                                   (if (gx#stx-pair?
                                                        _hd26522830_)
                                                       (let ((_e26552836_
                                                              (gx#syntax-e
                                                               _hd26522830_)))
                                                         (let ((_lp-hd26562840_
                                                                (##car _e26552836_))
                                                               (_lp-tl26572843_
                                                                (##cdr _e26552836_)))
                                                           (_loop26542826_
                                                            _lp-tl26572843_
                                                            (cons _lp-hd26562840_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _super26582833_))))
               (let ((_super26592846_ (reverse _super26582833_)))
                 (if (gx#stx-pair/null? _tl26472807_)
                     (if (fx>= (gx#stx-length _tl26472807_) '0)
                         (let ((_g10175_
                                (gx#syntax-split-splice _tl26472807_ '0)))
                           (begin
                             (let ((_g10176_ (values-count _g10175_)))
                               (if (not (fx= _g10176_ 2))
                                   (error "Context expects 2 values"
                                          _g10176_)))
                             (let ((_target26602850_ (values-ref _g10175_ 0))
                                   (_tl26622853_ (values-ref _g10175_ 1)))
                               (if (gx#stx-null? _tl26622853_)
                                   (letrec ((_loop26632856_
                                             (lambda (_hd26612860_
                                                      _method26672863_
                                                      _symbol26682865_)
                                               (if (gx#stx-pair? _hd26612860_)
                                                   (let ((_e26642868_
                                                          (gx#syntax-e
                                                           _hd26612860_)))
                                                     (let ((_lp-hd26652872_
                                                            (##car _e26642868_))
                                                           (_lp-tl26662875_
                                                            (##cdr _e26642868_)))
                                                       (if (gx#stx-pair?
                                                            _lp-hd26652872_)
                                                           (let ((_e26712878_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _lp-hd26652872_)))
                     (let ((_hd26722882_ (##car _e26712878_))
                           (_tl26732885_ (##cdr _e26712878_)))
                       (if (gx#stx-pair? _tl26732885_)
                           (let ((_e26742888_ (gx#syntax-e _tl26732885_)))
                             (let ((_hd26752892_ (##car _e26742888_))
                                   (_tl26762895_ (##cdr _e26742888_)))
                               (if (gx#stx-null? _tl26762895_)
                                   (_loop26632856_
                                    _lp-tl26662875_
                                    (cons _hd26752892_ _method26672863_)
                                    (cons _hd26722882_ _symbol26682865_))
                                   (_g26192773_ _g26212777_))))
                           (_g26192773_ _g26212777_))))
                   (_g26192773_ _g26212777_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_method26692898_
                                                          (reverse _method26672863_))
                                                         (_symbol26702901_
                                                          (reverse _symbol26682865_)))
                                                     ((lambda (_L2904_
                                                               _L2906_
                                                               _L2907_
                                                               _L2908_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'define)
                                                              (cons _L2908_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'delay)
                                        (cons (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'tbl)
                        (cons (cons (gx#datum->syntax '#f 'make-hash-table-eq)
                                    '())
                              '()))
                  (begin
                    '#!void
                    (foldr (lambda (_g29342940_ _g29352943_)
                             (cons (cons (gx#datum->syntax '#f 'hash-copy!)
                                         (cons (gx#datum->syntax '#f 'tbl)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'force)
                                                           (cons _g29342940_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   _g29352943_))
                           (begin
                             (gx#syntax-check-splice-targets _L2904_ _L2906_)
                             (foldr (lambda (_g29362946_
                                             _g29372949_
                                             _g29382951_)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'hash-put!)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'tbl)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons _g29372949_ '()))
                      (cons _g29362946_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g29382951_))
                                    (cons (gx#datum->syntax '#f 'tbl) '())
                                    _L2904_
                                    _L2906_))
                           _L2907_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  '()))))
              _method26692898_
              _symbol26702901_
              _super26592846_
              _hd26492814_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop26632856_ _target26602850_ '() '()))
                                   (_g26192773_ _g26212777_)))))
                         (_g26192773_ _g26212777_))
                     (_g26192773_ _g26212777_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop26542826_ _target26512820_ '()))
                                       (_g26192773_ _g26212777_)))))
                             (_g26192773_ _g26212777_))
                         (_g26192773_ _g26212777_))))
                 (_g26192773_ _g26212777_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g26192773_ _g26212777_))
                                             (_g26192773_ _g26212777_))
                                         (_g26192773_ _g26212777_))))
                                 (_g26192773_ _g26212777_))))
                         (_g26192773_ _g26212777_)))))
              (let ((_g26173012_
                     (lambda (_g26212958_)
                       (if (gx#stx-pair? _g26212958_)
                           (let ((_e26262961_ (gx#syntax-e _g26212958_)))
                             (let ((_hd26272965_ (##car _e26262961_))
                                   (_tl26282968_ (##cdr _e26262961_)))
                               (if (gx#stx-pair? _tl26282968_)
                                   (let ((_e26292971_
                                          (gx#syntax-e _tl26282968_)))
                                     (let ((_hd26302975_ (##car _e26292971_))
                                           (_tl26312978_ (##cdr _e26292971_)))
                                       (if (gx#stx-pair? _tl26312978_)
                                           (let ((_e26322981_
                                                  (gx#syntax-e _tl26312978_)))
                                             (let ((_hd26332985_
                                                    (##car _e26322981_))
                                                   (_tl26342988_
                                                    (##cdr _e26322981_)))
                                               ((lambda (_L2991_
                                                         _L2993_
                                                         _L2994_
                                                         _L2995_)
                                                  (if (gx#identifier? _L2993_)
                                                      (cons _L2995_
                                                            (cons _L2994_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _L2993_ '()) _L2991_)))
              (_g26182954_ _g26212958_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl26342988_
                                                _hd26332985_
                                                _hd26302975_
                                                _hd26272965_)))
                                           (_g26182954_ _g26212958_))))
                                   (_g26182954_ _g26212958_))))
                           (_g26182954_ _g26212958_)))))
                (_g26173012_ _$stx2614_)))))))
    (define |gxc[:0:]#meta-state|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g10177_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g10178_|
                   (cons |gxc[1]#_g10179_|
                         (cons |gxc[1]#_g10180_|
                               (cons (cons |gxc[1]#_g10181_|
                                           (cons |gxc[1]#_g10182_|
                                                 (cons |gxc[1]#_g10183_|
                                                       (cons |gxc[1]#_g10184_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g10185_|
                                                 (cons |gxc[1]#_g10186_|
                                                       (cons |gxc[1]#_g10187_|
                                                             (cons |gxc[1]#_g10188_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gxc#meta-state::t
        '#f
        'meta-state
        ':init!
        '()
        '(src n open blocks))))
    (define |gxc[:0:]#meta-state-block|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g10189_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g10190_|
                   (cons |gxc[1]#_g10191_|
                         (cons |gxc[1]#_g10192_|
                               (cons (cons |gxc[1]#_g10193_|
                                           (cons |gxc[1]#_g10194_|
                                                 (cons |gxc[1]#_g10195_|
                                                       (cons |gxc[1]#_g10196_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g10197_|
                                                 (cons |gxc[1]#_g10198_|
                                                       (cons |gxc[1]#_g10199_|
                                                             (cons |gxc[1]#_g10200_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gxc#meta-state-block::t
        '#f
        'meta-state-block
        '#f
        '()
        '(ctx phi n code))))))
