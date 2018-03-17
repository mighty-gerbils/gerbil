(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gxc[1]#_g12940_|
    (gx#make-syntax-quote 'meta-state::t #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g12941_|
    (gx#make-syntax-quote 'meta-state::t #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g12942_|
    (gx#make-syntax-quote
     'make-meta-state
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12943_|
    (gx#make-syntax-quote 'meta-state? #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g12944_|
    (gx#make-syntax-quote
     'meta-state-src
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12945_|
    (gx#make-syntax-quote 'meta-state-n #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g12946_|
    (gx#make-syntax-quote
     'meta-state-open
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12947_|
    (gx#make-syntax-quote
     'meta-state-blocks
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12948_|
    (gx#make-syntax-quote
     'meta-state-src-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12949_|
    (gx#make-syntax-quote
     'meta-state-n-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12950_|
    (gx#make-syntax-quote
     'meta-state-open-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12951_|
    (gx#make-syntax-quote
     'meta-state-blocks-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12952_|
    (gx#make-syntax-quote
     'meta-state-block::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12953_|
    (gx#make-syntax-quote
     'meta-state-block::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12954_|
    (gx#make-syntax-quote
     'make-meta-state-block
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12955_|
    (gx#make-syntax-quote
     'meta-state-block?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12956_|
    (gx#make-syntax-quote
     'meta-state-block-ctx
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12957_|
    (gx#make-syntax-quote
     'meta-state-block-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12958_|
    (gx#make-syntax-quote
     'meta-state-block-n
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12959_|
    (gx#make-syntax-quote
     'meta-state-block-code
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12960_|
    (gx#make-syntax-quote
     'meta-state-block-ctx-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12961_|
    (gx#make-syntax-quote
     'meta-state-block-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12962_|
    (gx#make-syntax-quote
     'meta-state-block-n-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12963_|
    (gx#make-syntax-quote
     'meta-state-block-code-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#defcompile-method|
      (lambda (_$stx3398_)
        (let* ((_g34043483_
                (lambda (_g34053479_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g34053479_)))
               (_g34033557_
                (lambda (_g34053487_)
                  (if (gx#stx-pair? _g34053487_)
                      (let ((_e34663490_ (gx#syntax-e _g34053487_)))
                        (let ((_hd34673494_ (##car _e34663490_))
                              (_tl34683497_ (##cdr _e34663490_)))
                          (if (gx#stx-pair? _tl34683497_)
                              (let ((_e34693500_ (gx#syntax-e _tl34683497_)))
                                (let ((_hd34703504_ (##car _e34693500_))
                                      (_tl34713507_ (##cdr _e34693500_)))
                                  (if (gx#stx-pair? _tl34713507_)
                                      (let ((_e34723510_
                                             (gx#syntax-e _tl34713507_)))
                                        (let ((_hd34733514_
                                               (##car _e34723510_))
                                              (_tl34743517_
                                               (##cdr _e34723510_)))
                                          (if (gx#stx-pair? _hd34733514_)
                                              (let ((_e34753520_
                                                     (gx#syntax-e
                                                      _hd34733514_)))
                                                (let ((_hd34763524_
                                                       (##car _e34753520_))
                                                      (_tl34773527_
                                                       (##cdr _e34753520_)))
                                                  ((lambda (_L3530_
                                                            _L3532_
                                                            _L3533_
                                                            _L3534_
                                                            _L3535_)
                                                     (if (gx#identifier?
                                                          _L3534_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'begin)
                                                               (cons (cons _L3535_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons '#f
                                         (cons (cons _L3533_ _L3532_)
                                               _L3530_)))
                             (cons (cons (gx#datum->syntax '#f 'define)
                                         (cons (cons _L3534_
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
                                                 (cons _L3533_ '()))
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
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   '())))
                 (_g34043483_ _g34053487_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl34743517_
                                                   _tl34773527_
                                                   _hd34763524_
                                                   _hd34703504_
                                                   _hd34673494_)))
                                              (_g34043483_ _g34053487_))))
                                      (_g34043483_ _g34053487_))))
                              (_g34043483_ _g34053487_))))
                      (_g34043483_ _g34053487_))))
               (_g34023738_
                (lambda (_g34053561_)
                  (if (gx#stx-pair? _g34053561_)
                      (let ((_e34233564_ (gx#syntax-e _g34053561_)))
                        (let ((_hd34243568_ (##car _e34233564_))
                              (_tl34253571_ (##cdr _e34233564_)))
                          (if (gx#stx-pair? _tl34253571_)
                              (let ((_e34263574_ (gx#syntax-e _tl34253571_)))
                                (let ((_hd34273578_ (##car _e34263574_))
                                      (_tl34283581_ (##cdr _e34263574_)))
                                  (if (gx#stx-datum? _hd34273578_)
                                      (if (equal? (gx#stx-e _hd34273578_) '#f)
                                          (if (gx#stx-pair? _tl34283581_)
                                              (let ((_e34293584_
                                                     (gx#syntax-e
                                                      _tl34283581_)))
                                                (let ((_hd34303588_
                                                       (##car _e34293584_))
                                                      (_tl34313591_
                                                       (##cdr _e34293584_)))
                                                  (if (gx#stx-pair?
                                                       _hd34303588_)
                                                      (let ((_e34323594_
                                                             (gx#syntax-e
                                                              _hd34303588_)))
                                                        (let ((_hd34333598_
                                                               (##car _e34323594_))
                                                              (_tl34343601_
                                                               (##cdr _e34323594_)))
                                                          (if (gx#stx-pair/null?
                                                               _tl34343601_)
                                                              (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _tl34343601_)
                                '0)
                          (let ((_g12936_
                                 (gx#syntax-split-splice _tl34343601_ '0)))
                            (begin
                              (let ((_g12937_
                                     (if (##values? _g12936_)
                                         (##vector-length _g12936_)
                                         1)))
                                (if (not (##fx= _g12937_ 2))
                                    (error "Context expects 2 values"
                                           _g12937_)))
                              (let ((_target34353604_
                                     (##vector-ref _g12936_ 0))
                                    (_tl34373607_ (##vector-ref _g12936_ 1)))
                                (if (gx#stx-null? _tl34373607_)
                                    (letrec ((_loop34383610_
                                              (lambda (_hd34363614_
                                                       _super34423617_)
                                                (if (gx#stx-pair? _hd34363614_)
                                                    (let ((_e34393620_
                                                           (gx#syntax-e
                                                            _hd34363614_)))
                                                      (let ((_lp-hd34403624_
                                                             (##car _e34393620_))
                                                            (_lp-tl34413627_
                                                             (##cdr _e34393620_)))
                                                        (_loop34383610_
                                                         _lp-tl34413627_
                                                         (cons _lp-hd34403624_
                                                               _super34423617_))))
                                                    (let ((_super34433630_
                                                           (reverse _super34423617_)))
                                                      (if (gx#stx-pair/null?
                                                           _tl34313591_)
                                                          (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tl34313591_)
                            '0)
                      (let ((_g12938_
                             (gx#syntax-split-splice _tl34313591_ '0)))
                        (begin
                          (let ((_g12939_
                                 (if (##values? _g12938_)
                                     (##vector-length _g12938_)
                                     1)))
                            (if (not (##fx= _g12939_ 2))
                                (error "Context expects 2 values" _g12939_)))
                          (let ((_target34443634_ (##vector-ref _g12938_ 0))
                                (_tl34463637_ (##vector-ref _g12938_ 1)))
                            (if (gx#stx-null? _tl34463637_)
                                (letrec ((_loop34473640_
                                          (lambda (_hd34453644_
                                                   _method34513647_
                                                   _symbol34523649_)
                                            (if (gx#stx-pair? _hd34453644_)
                                                (let ((_e34483652_
                                                       (gx#syntax-e
                                                        _hd34453644_)))
                                                  (let ((_lp-hd34493656_
                                                         (##car _e34483652_))
                                                        (_lp-tl34503659_
                                                         (##cdr _e34483652_)))
                                                    (if (gx#stx-pair?
                                                         _lp-hd34493656_)
                                                        (let ((_e34553662_
                                                               (gx#syntax-e
                                                                _lp-hd34493656_)))
                                                          (let ((_hd34563666_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e34553662_))
                        (_tl34573669_ (##cdr _e34553662_)))
                    (if (gx#stx-pair? _tl34573669_)
                        (let ((_e34583672_ (gx#syntax-e _tl34573669_)))
                          (let ((_hd34593676_ (##car _e34583672_))
                                (_tl34603679_ (##cdr _e34583672_)))
                            (if (gx#stx-null? _tl34603679_)
                                (_loop34473640_
                                 _lp-tl34503659_
                                 (cons _hd34593676_ _method34513647_)
                                 (cons _hd34563666_ _symbol34523649_))
                                (_g34033557_ _g34053561_))))
                        (_g34033557_ _g34053561_))))
                (_g34033557_ _g34053561_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_method34533682_
                                                       (reverse _method34513647_))
                                                      (_symbol34543685_
                                                       (reverse _symbol34523649_)))
                                                  ((lambda (_L3688_
                                                            _L3690_
                                                            _L3691_
                                                            _L3692_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'define)
                                                           (cons _L3692_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'delay)
                                     (cons (cons (gx#datum->syntax '#f 'let)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'tbl)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'make-hash-table-eq)
                                 '())
                           '()))
               (begin
                 '#!void
                 (foldr (lambda (_g37183724_ _g37193727_)
                          (cons (cons (gx#datum->syntax '#f 'hash-copy!)
                                      (cons (gx#datum->syntax '#f 'tbl)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'force)
                                                        (cons _g37183724_ '()))
                                                  '())))
                                _g37193727_))
                        (begin
                          (gx#syntax-check-splice-targets _L3688_ _L3690_)
                          (foldr (lambda (_g37203730_ _g37213733_ _g37223735_)
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
                         (cons _g37213733_ '()))
                   (cons _g37203730_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _g37223735_))
                                 (cons (gx#datum->syntax '#f 'tbl) '())
                                 _L3688_
                                 _L3690_))
                        _L3691_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _method34533682_
                                                   _symbol34543685_
                                                   _super34433630_
                                                   _hd34333598_))))))
                                  (_loop34473640_ _target34443634_ '() '()))
                                (_g34033557_ _g34053561_)))))
                      (_g34033557_ _g34053561_))
                  (_g34033557_ _g34053561_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop34383610_ _target34353604_ '()))
                                    (_g34033557_ _g34053561_)))))
                          (_g34033557_ _g34053561_))
                      (_g34033557_ _g34053561_))))
              (_g34033557_ _g34053561_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g34033557_ _g34053561_))
                                          (_g34033557_ _g34053561_))
                                      (_g34033557_ _g34053561_))))
                              (_g34033557_ _g34053561_))))
                      (_g34033557_ _g34053561_))))
               (_g34013796_
                (lambda (_g34053742_)
                  (if (gx#stx-pair? _g34053742_)
                      (let ((_e34103745_ (gx#syntax-e _g34053742_)))
                        (let ((_hd34113749_ (##car _e34103745_))
                              (_tl34123752_ (##cdr _e34103745_)))
                          (if (gx#stx-pair? _tl34123752_)
                              (let ((_e34133755_ (gx#syntax-e _tl34123752_)))
                                (let ((_hd34143759_ (##car _e34133755_))
                                      (_tl34153762_ (##cdr _e34133755_)))
                                  (if (gx#stx-pair? _tl34153762_)
                                      (let ((_e34163765_
                                             (gx#syntax-e _tl34153762_)))
                                        (let ((_hd34173769_
                                               (##car _e34163765_))
                                              (_tl34183772_
                                               (##cdr _e34163765_)))
                                          ((lambda (_L3775_
                                                    _L3777_
                                                    _L3778_
                                                    _L3779_)
                                             (if (gx#identifier? _L3777_)
                                                 (cons _L3779_
                                                       (cons _L3778_
                                                             (cons (cons _L3777_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           _L3775_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g34023738_ _g34053742_)))
                                           _tl34183772_
                                           _hd34173769_
                                           _hd34143759_
                                           _hd34113749_)))
                                      (_g34023738_ _g34053742_))))
                              (_g34023738_ _g34053742_))))
                      (_g34023738_ _g34053742_)))))
          (_g34013796_ _$stx3398_))))
    (define |gxc[:0:]#meta-state|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g12940_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g12941_|
                   (cons |gxc[1]#_g12942_|
                         (cons |gxc[1]#_g12943_|
                               (cons (cons |gxc[1]#_g12944_|
                                           (cons |gxc[1]#_g12945_|
                                                 (cons |gxc[1]#_g12946_|
                                                       (cons |gxc[1]#_g12947_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g12948_|
                                                 (cons |gxc[1]#_g12949_|
                                                       (cons |gxc[1]#_g12950_|
                                                             (cons |gxc[1]#_g12951_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gxc#meta-state::t
        '#f
        'meta-state
        ':init!
        '()
        '(src n open blocks))))
    (define |gxc[:0:]#meta-state-block|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g12952_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g12953_|
                   (cons |gxc[1]#_g12954_|
                         (cons |gxc[1]#_g12955_|
                               (cons (cons |gxc[1]#_g12956_|
                                           (cons |gxc[1]#_g12957_|
                                                 (cons |gxc[1]#_g12958_|
                                                       (cons |gxc[1]#_g12959_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g12960_|
                                                 (cons |gxc[1]#_g12961_|
                                                       (cons |gxc[1]#_g12962_|
                                                             (cons |gxc[1]#_g12963_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gxc#meta-state-block::t
        '#f
        'meta-state-block
        '#f
        '()
        '(ctx phi n code))))))
