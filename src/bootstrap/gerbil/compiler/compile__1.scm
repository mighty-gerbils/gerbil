(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gxc[1]#_g9918_| (gx#core-quote-syntax 'meta-state::t))
  (define |gxc[1]#_g9919_| (gx#core-quote-syntax 'meta-state::t))
  (define |gxc[1]#_g9920_| (gx#core-quote-syntax 'make-meta-state))
  (define |gxc[1]#_g9921_| (gx#core-quote-syntax 'meta-state?))
  (define |gxc[1]#_g9922_| (gx#core-quote-syntax 'meta-state-src))
  (define |gxc[1]#_g9923_| (gx#core-quote-syntax 'meta-state-n))
  (define |gxc[1]#_g9924_| (gx#core-quote-syntax 'meta-state-open))
  (define |gxc[1]#_g9925_| (gx#core-quote-syntax 'meta-state-blocks))
  (define |gxc[1]#_g9926_| (gx#core-quote-syntax 'meta-state-src-set!))
  (define |gxc[1]#_g9927_| (gx#core-quote-syntax 'meta-state-n-set!))
  (define |gxc[1]#_g9928_| (gx#core-quote-syntax 'meta-state-open-set!))
  (define |gxc[1]#_g9929_| (gx#core-quote-syntax 'meta-state-blocks-set!))
  (define |gxc[1]#_g9930_| (gx#core-quote-syntax 'meta-state-block::t))
  (define |gxc[1]#_g9931_| (gx#core-quote-syntax 'meta-state-block::t))
  (define |gxc[1]#_g9932_| (gx#core-quote-syntax 'make-meta-state-block))
  (define |gxc[1]#_g9933_| (gx#core-quote-syntax 'meta-state-block?))
  (define |gxc[1]#_g9934_| (gx#core-quote-syntax 'meta-state-block-ctx))
  (define |gxc[1]#_g9935_| (gx#core-quote-syntax 'meta-state-block-phi))
  (define |gxc[1]#_g9936_| (gx#core-quote-syntax 'meta-state-block-n))
  (define |gxc[1]#_g9937_| (gx#core-quote-syntax 'meta-state-block-code))
  (define |gxc[1]#_g9938_| (gx#core-quote-syntax 'meta-state-block-ctx-set!))
  (define |gxc[1]#_g9939_| (gx#core-quote-syntax 'meta-state-block-phi-set!))
  (define |gxc[1]#_g9940_| (gx#core-quote-syntax 'meta-state-block-n-set!))
  (define |gxc[1]#_g9941_| (gx#core-quote-syntax 'meta-state-block-code-set!))
  (begin
    (define |gxc[:0:]#defcompile-method|
      (lambda (_$stx2355_)
        (let ((_g23612440_
               (lambda (_g23622436_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g23622436_))))
          (let ((_g23602514_
                 (lambda (_g23622444_)
                   (if (gx#stx-pair? _g23622444_)
                       (let ((_e24232447_ (gx#syntax-e _g23622444_)))
                         (let ((_hd24242451_ (##car _e24232447_))
                               (_tl24252454_ (##cdr _e24232447_)))
                           (if (gx#stx-pair? _tl24252454_)
                               (let ((_e24262457_ (gx#syntax-e _tl24252454_)))
                                 (let ((_hd24272461_ (##car _e24262457_))
                                       (_tl24282464_ (##cdr _e24262457_)))
                                   (if (gx#stx-pair? _tl24282464_)
                                       (let ((_e24292467_
                                              (gx#syntax-e _tl24282464_)))
                                         (let ((_hd24302471_
                                                (##car _e24292467_))
                                               (_tl24312474_
                                                (##cdr _e24292467_)))
                                           (if (gx#stx-pair? _hd24302471_)
                                               (let ((_e24322477_
                                                      (gx#syntax-e
                                                       _hd24302471_)))
                                                 (let ((_hd24332481_
                                                        (##car _e24322477_))
                                                       (_tl24342484_
                                                        (##cdr _e24322477_)))
                                                   ((lambda (_L2487_
                                                             _L2489_
                                                             _L2490_
                                                             _L2491_
                                                             _L2492_)
                                                      (if (gx#identifier?
                                                           _L2491_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin)
                        (cons (cons _L2492_
                                    (cons '#f
                                          (cons (cons _L2490_ _L2489_)
                                                _L2487_)))
                              (cons (cons (gx#datum->syntax '#f 'define)
                                          (cons (cons _L2491_
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
                                                  (cons _L2490_ '()))
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
                  (_g23612440_ _g23622444_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl24312474_
                                                    _tl24342484_
                                                    _hd24332481_
                                                    _hd24272461_
                                                    _hd24242451_)))
                                               (_g23612440_ _g23622444_))))
                                       (_g23612440_ _g23622444_))))
                               (_g23612440_ _g23622444_))))
                       (_g23612440_ _g23622444_)))))
            (let ((_g23592695_
                   (lambda (_g23622518_)
                     (if (gx#stx-pair? _g23622518_)
                         (let ((_e23802521_ (gx#syntax-e _g23622518_)))
                           (let ((_hd23812525_ (##car _e23802521_))
                                 (_tl23822528_ (##cdr _e23802521_)))
                             (if (gx#stx-pair? _tl23822528_)
                                 (let ((_e23832531_
                                        (gx#syntax-e _tl23822528_)))
                                   (let ((_hd23842535_ (##car _e23832531_))
                                         (_tl23852538_ (##cdr _e23832531_)))
                                     (if (gx#stx-datum? _hd23842535_)
                                         (if (equal? (gx#stx-e _hd23842535_)
                                                     '#f)
                                             (if (gx#stx-pair? _tl23852538_)
                                                 (let ((_e23862541_
                                                        (gx#syntax-e
                                                         _tl23852538_)))
                                                   (let ((_hd23872545_
                                                          (##car _e23862541_))
                                                         (_tl23882548_
                                                          (##cdr _e23862541_)))
                                                     (if (gx#stx-pair?
                                                          _hd23872545_)
                                                         (let ((_e23892551_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd23872545_)))
                   (let ((_hd23902555_ (##car _e23892551_))
                         (_tl23912558_ (##cdr _e23892551_)))
                     (if (gx#stx-pair/null? _tl23912558_)
                         (if (fx>= (gx#stx-length _tl23912558_) '0)
                             (let ((_g9914_ (gx#syntax-split-splice
                                             _tl23912558_
                                             '0)))
                               (begin
                                 (let ((_g9915_ (values-count _g9914_)))
                                   (if (not (fx= _g9915_ 2))
                                       (error "Context expects 2 values"
                                              _g9915_)))
                                 (let ((_target23922561_
                                        (values-ref _g9914_ 0))
                                       (_tl23942564_ (values-ref _g9914_ 1)))
                                   (if (gx#stx-null? _tl23942564_)
                                       (letrec ((_loop23952567_
                                                 (lambda (_hd23932571_
                                                          _super23992574_)
                                                   (if (gx#stx-pair?
                                                        _hd23932571_)
                                                       (let ((_e23962577_
                                                              (gx#syntax-e
                                                               _hd23932571_)))
                                                         (let ((_lp-hd23972581_
                                                                (##car _e23962577_))
                                                               (_lp-tl23982584_
                                                                (##cdr _e23962577_)))
                                                           (_loop23952567_
                                                            _lp-tl23982584_
                                                            (cons _lp-hd23972581_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _super23992574_))))
               (let ((_super24002587_ (reverse _super23992574_)))
                 (if (gx#stx-pair/null? _tl23882548_)
                     (if (fx>= (gx#stx-length _tl23882548_) '0)
                         (let ((_g9916_ (gx#syntax-split-splice
                                         _tl23882548_
                                         '0)))
                           (begin
                             (let ((_g9917_ (values-count _g9916_)))
                               (if (not (fx= _g9917_ 2))
                                   (error "Context expects 2 values" _g9917_)))
                             (let ((_target24012591_ (values-ref _g9916_ 0))
                                   (_tl24032594_ (values-ref _g9916_ 1)))
                               (if (gx#stx-null? _tl24032594_)
                                   (letrec ((_loop24042597_
                                             (lambda (_hd24022601_
                                                      _method24082604_
                                                      _symbol24092606_)
                                               (if (gx#stx-pair? _hd24022601_)
                                                   (let ((_e24052609_
                                                          (gx#syntax-e
                                                           _hd24022601_)))
                                                     (let ((_lp-hd24062613_
                                                            (##car _e24052609_))
                                                           (_lp-tl24072616_
                                                            (##cdr _e24052609_)))
                                                       (if (gx#stx-pair?
                                                            _lp-hd24062613_)
                                                           (let ((_e24122619_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _lp-hd24062613_)))
                     (let ((_hd24132623_ (##car _e24122619_))
                           (_tl24142626_ (##cdr _e24122619_)))
                       (if (gx#stx-pair? _tl24142626_)
                           (let ((_e24152629_ (gx#syntax-e _tl24142626_)))
                             (let ((_hd24162633_ (##car _e24152629_))
                                   (_tl24172636_ (##cdr _e24152629_)))
                               (if (gx#stx-null? _tl24172636_)
                                   (_loop24042597_
                                    _lp-tl24072616_
                                    (cons _hd24162633_ _method24082604_)
                                    (cons _hd24132623_ _symbol24092606_))
                                   (_g23602514_ _g23622518_))))
                           (_g23602514_ _g23622518_))))
                   (_g23602514_ _g23622518_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_method24102639_
                                                          (reverse _method24082604_))
                                                         (_symbol24112642_
                                                          (reverse _symbol24092606_)))
                                                     ((lambda (_L2645_
                                                               _L2647_
                                                               _L2648_
                                                               _L2649_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'define)
                                                              (cons _L2649_
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
                    (foldr (lambda (_g26752681_ _g26762684_)
                             (cons (cons (gx#datum->syntax '#f 'hash-copy!)
                                         (cons (gx#datum->syntax '#f 'tbl)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'force)
                                                           (cons _g26752681_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   _g26762684_))
                           (begin
                             (gx#syntax-check-splice-targets _L2645_ _L2647_)
                             (foldr (lambda (_g26772687_
                                             _g26782690_
                                             _g26792692_)
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
                            (cons _g26782690_ '()))
                      (cons _g26772687_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g26792692_))
                                    (cons (gx#datum->syntax '#f 'tbl) '())
                                    _L2645_
                                    _L2647_))
                           _L2648_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  '()))))
              _method24102639_
              _symbol24112642_
              _super24002587_
              _hd23902555_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop24042597_ _target24012591_ '() '()))
                                   (_g23602514_ _g23622518_)))))
                         (_g23602514_ _g23622518_))
                     (_g23602514_ _g23622518_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop23952567_ _target23922561_ '()))
                                       (_g23602514_ _g23622518_)))))
                             (_g23602514_ _g23622518_))
                         (_g23602514_ _g23622518_))))
                 (_g23602514_ _g23622518_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g23602514_ _g23622518_))
                                             (_g23602514_ _g23622518_))
                                         (_g23602514_ _g23622518_))))
                                 (_g23602514_ _g23622518_))))
                         (_g23602514_ _g23622518_)))))
              (let ((_g23582753_
                     (lambda (_g23622699_)
                       (if (gx#stx-pair? _g23622699_)
                           (let ((_e23672702_ (gx#syntax-e _g23622699_)))
                             (let ((_hd23682706_ (##car _e23672702_))
                                   (_tl23692709_ (##cdr _e23672702_)))
                               (if (gx#stx-pair? _tl23692709_)
                                   (let ((_e23702712_
                                          (gx#syntax-e _tl23692709_)))
                                     (let ((_hd23712716_ (##car _e23702712_))
                                           (_tl23722719_ (##cdr _e23702712_)))
                                       (if (gx#stx-pair? _tl23722719_)
                                           (let ((_e23732722_
                                                  (gx#syntax-e _tl23722719_)))
                                             (let ((_hd23742726_
                                                    (##car _e23732722_))
                                                   (_tl23752729_
                                                    (##cdr _e23732722_)))
                                               ((lambda (_L2732_
                                                         _L2734_
                                                         _L2735_
                                                         _L2736_)
                                                  (if (gx#identifier? _L2734_)
                                                      (cons _L2736_
                                                            (cons _L2735_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _L2734_ '()) _L2732_)))
              (_g23592695_ _g23622699_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl23752729_
                                                _hd23742726_
                                                _hd23712716_
                                                _hd23682706_)))
                                           (_g23592695_ _g23622699_))))
                                   (_g23592695_ _g23622699_))))
                           (_g23592695_ _g23622699_)))))
                (_g23582753_ _$stx2355_)))))))
    (define |gxc[:0:]#meta-state|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g9918_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g9919_|
                   (cons |gxc[1]#_g9920_|
                         (cons |gxc[1]#_g9921_|
                               (cons (cons |gxc[1]#_g9922_|
                                           (cons |gxc[1]#_g9923_|
                                                 (cons |gxc[1]#_g9924_|
                                                       (cons |gxc[1]#_g9925_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g9926_|
                                                 (cons |gxc[1]#_g9927_|
                                                       (cons |gxc[1]#_g9928_|
                                                             (cons |gxc[1]#_g9929_|
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
       |gxc[1]#_g9930_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g9931_|
                   (cons |gxc[1]#_g9932_|
                         (cons |gxc[1]#_g9933_|
                               (cons (cons |gxc[1]#_g9934_|
                                           (cons |gxc[1]#_g9935_|
                                                 (cons |gxc[1]#_g9936_|
                                                       (cons |gxc[1]#_g9937_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g9938_|
                                                 (cons |gxc[1]#_g9939_|
                                                       (cons |gxc[1]#_g9940_|
                                                             (cons |gxc[1]#_g9941_|
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
