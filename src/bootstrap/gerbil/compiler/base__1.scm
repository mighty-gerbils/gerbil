(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gxc[1]#_g2605_| (gx#core-quote-syntax 'symbol-table::t))
  (define |gxc[1]#_g2606_| (gx#core-quote-syntax 'symbol-table::t))
  (define |gxc[1]#_g2607_| (gx#core-quote-syntax 'make-symbol-table))
  (define |gxc[1]#_g2608_| (gx#core-quote-syntax 'symbol-table?))
  (define |gxc[1]#_g2609_| (gx#core-quote-syntax 'symbol-table-gensyms))
  (define |gxc[1]#_g2610_| (gx#core-quote-syntax 'symbol-table-bindings))
  (define |gxc[1]#_g2611_| (gx#core-quote-syntax 'symbol-table-gensyms-set!))
  (define |gxc[1]#_g2612_| (gx#core-quote-syntax 'symbol-table-bindings-set!))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx331_)
        (gx#macro-expand-syntax-case _stx331_ 'stx-eq? 'stx-e 'quote)))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx334_)
        (let ((_g337361_
               (lambda (_g338357_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g338357_))))
          (let ((_g336666_
                 (lambda (_g338365_)
                   (if (gx#stx-pair? _g338365_)
                       (let ((_e341368_ (gx#syntax-e _g338365_)))
                         (let ((_hd342372_ (##car _e341368_))
                               (_tl343375_ (##cdr _e341368_)))
                           (if (gx#stx-pair? _tl343375_)
                               (let ((_e344378_ (gx#syntax-e _tl343375_)))
                                 (let ((_hd345382_ (##car _e344378_))
                                       (_tl346385_ (##cdr _e344378_)))
                                   (if (gx#stx-pair/null? _tl346385_)
                                       (if (fx>= (gx#stx-length _tl346385_) '0)
                                           (let ((_g2601_ (gx#syntax-split-splice
                                                           _tl346385_
                                                           '0)))
                                             (begin
                                               (let ((_g2602_ (values-count
                                                               _g2601_)))
                                                 (if (not (fx= _g2602_ 2))
                                                     (error "Context expects 2 values"
                                                            _g2602_)))
                                               (let ((_target347388_
                                                      (values-ref _g2601_ 0))
                                                     (_tl349391_
                                                      (values-ref _g2601_ 1)))
                                                 (if (gx#stx-null? _tl349391_)
                                                     (letrec ((_loop350394_
                                                               (lambda (_hd348398_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _clause354401_)
                         (if (gx#stx-pair? _hd348398_)
                             (let ((_e351404_ (gx#syntax-e _hd348398_)))
                               (let ((_lp-hd352408_ (##car _e351404_))
                                     (_lp-tl353411_ (##cdr _e351404_)))
                                 (_loop350394_
                                  _lp-tl353411_
                                  (cons _lp-hd352408_ _clause354401_))))
                             (let ((_clause355414_ (reverse _clause354401_)))
                               ((lambda (_L418_ _L420_)
                                  (if (gx#identifier-list? _L420_)
                                      (let ((_g441458_
                                             (lambda (_g442454_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g442454_))))
                                        (let ((_g440519_
                                               (lambda (_g442462_)
                                                 (if (gx#stx-pair/null?
                                                      _g442462_)
                                                     (if (fx>= (gx#stx-length
                                                                _g442462_)
                                                               '0)
                                                         (let ((_g2603_ (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g442462_
                                 '0)))
                   (begin
                     (let ((_g2604_ (values-count _g2603_)))
                       (if (not (fx= _g2604_ 2))
                           (error "Context expects 2 values" _g2604_)))
                     (let ((_target444465_ (values-ref _g2603_ 0))
                           (_tl446468_ (values-ref _g2603_ 1)))
                       (if (gx#stx-null? _tl446468_)
                           (letrec ((_loop447471_
                                     (lambda (_hd445475_ _clause451478_)
                                       (if (gx#stx-pair? _hd445475_)
                                           (let ((_e448481_
                                                  (gx#syntax-e _hd445475_)))
                                             (let ((_lp-hd449485_
                                                    (##car _e448481_))
                                                   (_lp-tl450488_
                                                    (##cdr _e448481_)))
                                               (_loop447471_
                                                _lp-tl450488_
                                                (cons _lp-hd449485_
                                                      _clause451478_))))
                                           (let ((_clause452491_
                                                  (reverse _clause451478_)))
                                             ((lambda (_L495_)
                                                (let ()
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '$stx)
                            '())
                      (cons (cons (gx#datum->syntax '#f 'ast-case)
                                  (cons (gx#datum->syntax '#f '$stx)
                                        (cons _L420_
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g510513_
                                                                _g511516_)
                                                         (cons _g510513_
                                                               _g511516_))
                                                       '()
                                                       _L495_)))))
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _clause452491_))))))
                             (_loop447471_ _target444465_ '()))
                           (_g441458_ _g442462_)))))
                 (_g441458_ _g442462_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g441458_ _g442462_)))))
                                          (_g440519_
                                           (gx#stx-map
                                            (lambda (_clause523_)
                                              (let ((_g527554_
                                                     (lambda (_g528550_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g528550_))))
                                                (let ((_g526612_
                                                       (lambda (_g528558_)
                                                         (if (gx#stx-pair?
                                                              _g528558_)
                                                             (let ((_e540561_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g528558_)))
                       (let ((_hd541565_ (##car _e540561_))
                             (_tl542568_ (##cdr _e540561_)))
                         (if (gx#stx-pair? _tl542568_)
                             (let ((_e543571_ (gx#syntax-e _tl542568_)))
                               (let ((_hd544575_ (##car _e543571_))
                                     (_tl545578_ (##cdr _e543571_)))
                                 (if (gx#stx-pair? _tl545578_)
                                     (let ((_e546581_
                                            (gx#syntax-e _tl545578_)))
                                       (let ((_hd547585_ (##car _e546581_))
                                             (_tl548588_ (##cdr _e546581_)))
                                         (if (gx#stx-null? _tl548588_)
                                             ((lambda (_L591_ _L593_ _L594_)
                                                (cons _L594_
                                                      (cons _L593_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'syntax)
                                (cons _L591_ '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd547585_
                                              _hd544575_
                                              _hd541565_)
                                             (_g527554_ _g528558_))))
                                     (_g527554_ _g528558_))))
                             (_g527554_ _g528558_))))
                     (_g527554_ _g528558_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g525654_
                                                         (lambda (_g528616_)
                                                           (if (gx#stx-pair?
                                                                _g528616_)
                                                               (let ((_e531619_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g528616_)))
                         (let ((_hd532623_ (##car _e531619_))
                               (_tl533626_ (##cdr _e531619_)))
                           (if (gx#stx-pair? _tl533626_)
                               (let ((_e534629_ (gx#syntax-e _tl533626_)))
                                 (let ((_hd535633_ (##car _e534629_))
                                       (_tl536636_ (##cdr _e534629_)))
                                   (if (gx#stx-null? _tl536636_)
                                       ((lambda (_L639_ _L641_)
                                          (cons _L641_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'syntax)
                                                            (cons _L639_ '()))
                                                      '())))
                                        _hd535633_
                                        _hd532623_)
                                       (_g526612_ _g528616_))))
                               (_g526612_ _g528616_))))
                       (_g526612_ _g528616_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g525654_ _clause523_)))))
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g657660_
                                                              _g658663_)
                                                       (cons _g657660_
                                                             _g658663_))
                                                     '()
                                                     _L418_))))))
                                      (_g337361_ _g338365_)))
                                _clause355414_
                                _hd345382_))))))
               (_loop350394_ _target347388_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g337361_ _g338365_)))))
                                           (_g337361_ _g338365_))
                                       (_g337361_ _g338365_))))
                               (_g337361_ _g338365_))))
                       (_g337361_ _g338365_)))))
            (_g336666_ _stx334_)))))
    (define |gxc[:0:]#symbol-table|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g2605_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g2606_|
                   (cons |gxc[1]#_g2607_|
                         (cons |gxc[1]#_g2608_|
                               (cons (cons |gxc[1]#_g2609_|
                                           (cons |gxc[1]#_g2610_| '()))
                                     (cons (cons |gxc[1]#_g2611_|
                                                 (cons |gxc[1]#_g2612_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gxc#symbol-table::t
        '#f
        'symbol-table
        ':init!
        '()
        '(gensyms bindings))))))
