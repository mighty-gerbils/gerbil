(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gxc[1]#_g10012_| (gx#core-quote-syntax 'meta-state::t))
  (define |gxc[1]#_g10013_| (gx#core-quote-syntax 'meta-state::t))
  (define |gxc[1]#_g10014_| (gx#core-quote-syntax 'make-meta-state))
  (define |gxc[1]#_g10015_| (gx#core-quote-syntax 'meta-state?))
  (define |gxc[1]#_g10016_| (gx#core-quote-syntax 'meta-state-src))
  (define |gxc[1]#_g10017_| (gx#core-quote-syntax 'meta-state-n))
  (define |gxc[1]#_g10018_| (gx#core-quote-syntax 'meta-state-open))
  (define |gxc[1]#_g10019_| (gx#core-quote-syntax 'meta-state-blocks))
  (define |gxc[1]#_g10020_| (gx#core-quote-syntax 'meta-state-src-set!))
  (define |gxc[1]#_g10021_| (gx#core-quote-syntax 'meta-state-n-set!))
  (define |gxc[1]#_g10022_| (gx#core-quote-syntax 'meta-state-open-set!))
  (define |gxc[1]#_g10023_| (gx#core-quote-syntax 'meta-state-blocks-set!))
  (define |gxc[1]#_g10024_| (gx#core-quote-syntax 'meta-state-block::t))
  (define |gxc[1]#_g10025_| (gx#core-quote-syntax 'meta-state-block::t))
  (define |gxc[1]#_g10026_| (gx#core-quote-syntax 'make-meta-state-block))
  (define |gxc[1]#_g10027_| (gx#core-quote-syntax 'meta-state-block?))
  (define |gxc[1]#_g10028_| (gx#core-quote-syntax 'meta-state-block-ctx))
  (define |gxc[1]#_g10029_| (gx#core-quote-syntax 'meta-state-block-phi))
  (define |gxc[1]#_g10030_| (gx#core-quote-syntax 'meta-state-block-n))
  (define |gxc[1]#_g10031_| (gx#core-quote-syntax 'meta-state-block-code))
  (define |gxc[1]#_g10032_| (gx#core-quote-syntax 'meta-state-block-ctx-set!))
  (define |gxc[1]#_g10033_| (gx#core-quote-syntax 'meta-state-block-phi-set!))
  (define |gxc[1]#_g10034_| (gx#core-quote-syntax 'meta-state-block-n-set!))
  (define |gxc[1]#_g10035_| (gx#core-quote-syntax 'meta-state-block-code-set!))
  (begin
    (define |gxc[:0:]#defcompile-method|
      (lambda (_$stx2448_)
        (let ((_g24542533_
               (lambda (_g24552529_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g24552529_))))
          (let ((_g24532607_
                 (lambda (_g24552537_)
                   (if (gx#stx-pair? _g24552537_)
                       (let ((_e25162540_ (gx#syntax-e _g24552537_)))
                         (let ((_hd25172544_ (##car _e25162540_))
                               (_tl25182547_ (##cdr _e25162540_)))
                           (if (gx#stx-pair? _tl25182547_)
                               (let ((_e25192550_ (gx#syntax-e _tl25182547_)))
                                 (let ((_hd25202554_ (##car _e25192550_))
                                       (_tl25212557_ (##cdr _e25192550_)))
                                   (if (gx#stx-pair? _tl25212557_)
                                       (let ((_e25222560_
                                              (gx#syntax-e _tl25212557_)))
                                         (let ((_hd25232564_
                                                (##car _e25222560_))
                                               (_tl25242567_
                                                (##cdr _e25222560_)))
                                           (if (gx#stx-pair? _hd25232564_)
                                               (let ((_e25252570_
                                                      (gx#syntax-e
                                                       _hd25232564_)))
                                                 (let ((_hd25262574_
                                                        (##car _e25252570_))
                                                       (_tl25272577_
                                                        (##cdr _e25252570_)))
                                                   ((lambda (_L2580_
                                                             _L2582_
                                                             _L2583_
                                                             _L2584_
                                                             _L2585_)
                                                      (if (gx#identifier?
                                                           _L2584_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin)
                        (cons (cons _L2585_
                                    (cons '#f
                                          (cons (cons _L2583_ _L2582_)
                                                _L2580_)))
                              (cons (cons (gx#datum->syntax '#f 'define)
                                          (cons (cons _L2584_
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
                                                  (cons _L2583_ '()))
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
                  (_g24542533_ _g24552537_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl25242567_
                                                    _tl25272577_
                                                    _hd25262574_
                                                    _hd25202554_
                                                    _hd25172544_)))
                                               (_g24542533_ _g24552537_))))
                                       (_g24542533_ _g24552537_))))
                               (_g24542533_ _g24552537_))))
                       (_g24542533_ _g24552537_)))))
            (let ((_g24522788_
                   (lambda (_g24552611_)
                     (if (gx#stx-pair? _g24552611_)
                         (let ((_e24732614_ (gx#syntax-e _g24552611_)))
                           (let ((_hd24742618_ (##car _e24732614_))
                                 (_tl24752621_ (##cdr _e24732614_)))
                             (if (gx#stx-pair? _tl24752621_)
                                 (let ((_e24762624_
                                        (gx#syntax-e _tl24752621_)))
                                   (let ((_hd24772628_ (##car _e24762624_))
                                         (_tl24782631_ (##cdr _e24762624_)))
                                     (if (gx#stx-datum? _hd24772628_)
                                         (if (equal? (gx#stx-e _hd24772628_)
                                                     '#f)
                                             (if (gx#stx-pair? _tl24782631_)
                                                 (let ((_e24792634_
                                                        (gx#syntax-e
                                                         _tl24782631_)))
                                                   (let ((_hd24802638_
                                                          (##car _e24792634_))
                                                         (_tl24812641_
                                                          (##cdr _e24792634_)))
                                                     (if (gx#stx-pair?
                                                          _hd24802638_)
                                                         (let ((_e24822644_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd24802638_)))
                   (let ((_hd24832648_ (##car _e24822644_))
                         (_tl24842651_ (##cdr _e24822644_)))
                     (if (gx#stx-pair/null? _tl24842651_)
                         (if (fx>= (gx#stx-length _tl24842651_) '0)
                             (let ((_g10008_
                                    (gx#syntax-split-splice _tl24842651_ '0)))
                               (begin
                                 (let ((_g10009_ (values-count _g10008_)))
                                   (if (not (fx= _g10009_ 2))
                                       (error "Context expects 2 values"
                                              _g10009_)))
                                 (let ((_target24852654_
                                        (values-ref _g10008_ 0))
                                       (_tl24872657_ (values-ref _g10008_ 1)))
                                   (if (gx#stx-null? _tl24872657_)
                                       (letrec ((_loop24882660_
                                                 (lambda (_hd24862664_
                                                          _super24922667_)
                                                   (if (gx#stx-pair?
                                                        _hd24862664_)
                                                       (let ((_e24892670_
                                                              (gx#syntax-e
                                                               _hd24862664_)))
                                                         (let ((_lp-hd24902674_
                                                                (##car _e24892670_))
                                                               (_lp-tl24912677_
                                                                (##cdr _e24892670_)))
                                                           (_loop24882660_
                                                            _lp-tl24912677_
                                                            (cons _lp-hd24902674_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _super24922667_))))
               (let ((_super24932680_ (reverse _super24922667_)))
                 (if (gx#stx-pair/null? _tl24812641_)
                     (if (fx>= (gx#stx-length _tl24812641_) '0)
                         (let ((_g10010_
                                (gx#syntax-split-splice _tl24812641_ '0)))
                           (begin
                             (let ((_g10011_ (values-count _g10010_)))
                               (if (not (fx= _g10011_ 2))
                                   (error "Context expects 2 values"
                                          _g10011_)))
                             (let ((_target24942684_ (values-ref _g10010_ 0))
                                   (_tl24962687_ (values-ref _g10010_ 1)))
                               (if (gx#stx-null? _tl24962687_)
                                   (letrec ((_loop24972690_
                                             (lambda (_hd24952694_
                                                      _method25012697_
                                                      _symbol25022699_)
                                               (if (gx#stx-pair? _hd24952694_)
                                                   (let ((_e24982702_
                                                          (gx#syntax-e
                                                           _hd24952694_)))
                                                     (let ((_lp-hd24992706_
                                                            (##car _e24982702_))
                                                           (_lp-tl25002709_
                                                            (##cdr _e24982702_)))
                                                       (if (gx#stx-pair?
                                                            _lp-hd24992706_)
                                                           (let ((_e25052712_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _lp-hd24992706_)))
                     (let ((_hd25062716_ (##car _e25052712_))
                           (_tl25072719_ (##cdr _e25052712_)))
                       (if (gx#stx-pair? _tl25072719_)
                           (let ((_e25082722_ (gx#syntax-e _tl25072719_)))
                             (let ((_hd25092726_ (##car _e25082722_))
                                   (_tl25102729_ (##cdr _e25082722_)))
                               (if (gx#stx-null? _tl25102729_)
                                   (_loop24972690_
                                    _lp-tl25002709_
                                    (cons _hd25092726_ _method25012697_)
                                    (cons _hd25062716_ _symbol25022699_))
                                   (_g24532607_ _g24552611_))))
                           (_g24532607_ _g24552611_))))
                   (_g24532607_ _g24552611_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_method25032732_
                                                          (reverse _method25012697_))
                                                         (_symbol25042735_
                                                          (reverse _symbol25022699_)))
                                                     ((lambda (_L2738_
                                                               _L2740_
                                                               _L2741_
                                                               _L2742_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'define)
                                                              (cons _L2742_
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
                    (foldr (lambda (_g27682774_ _g27692777_)
                             (cons (cons (gx#datum->syntax '#f 'hash-copy!)
                                         (cons (gx#datum->syntax '#f 'tbl)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'force)
                                                           (cons _g27682774_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   _g27692777_))
                           (begin
                             (gx#syntax-check-splice-targets _L2738_ _L2740_)
                             (foldr (lambda (_g27702780_
                                             _g27712783_
                                             _g27722785_)
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
                            (cons _g27712783_ '()))
                      (cons _g27702780_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g27722785_))
                                    (cons (gx#datum->syntax '#f 'tbl) '())
                                    _L2738_
                                    _L2740_))
                           _L2741_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  '()))))
              _method25032732_
              _symbol25042735_
              _super24932680_
              _hd24832648_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop24972690_ _target24942684_ '() '()))
                                   (_g24532607_ _g24552611_)))))
                         (_g24532607_ _g24552611_))
                     (_g24532607_ _g24552611_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop24882660_ _target24852654_ '()))
                                       (_g24532607_ _g24552611_)))))
                             (_g24532607_ _g24552611_))
                         (_g24532607_ _g24552611_))))
                 (_g24532607_ _g24552611_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g24532607_ _g24552611_))
                                             (_g24532607_ _g24552611_))
                                         (_g24532607_ _g24552611_))))
                                 (_g24532607_ _g24552611_))))
                         (_g24532607_ _g24552611_)))))
              (let ((_g24512846_
                     (lambda (_g24552792_)
                       (if (gx#stx-pair? _g24552792_)
                           (let ((_e24602795_ (gx#syntax-e _g24552792_)))
                             (let ((_hd24612799_ (##car _e24602795_))
                                   (_tl24622802_ (##cdr _e24602795_)))
                               (if (gx#stx-pair? _tl24622802_)
                                   (let ((_e24632805_
                                          (gx#syntax-e _tl24622802_)))
                                     (let ((_hd24642809_ (##car _e24632805_))
                                           (_tl24652812_ (##cdr _e24632805_)))
                                       (if (gx#stx-pair? _tl24652812_)
                                           (let ((_e24662815_
                                                  (gx#syntax-e _tl24652812_)))
                                             (let ((_hd24672819_
                                                    (##car _e24662815_))
                                                   (_tl24682822_
                                                    (##cdr _e24662815_)))
                                               ((lambda (_L2825_
                                                         _L2827_
                                                         _L2828_
                                                         _L2829_)
                                                  (if (gx#identifier? _L2827_)
                                                      (cons _L2829_
                                                            (cons _L2828_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _L2827_ '()) _L2825_)))
              (_g24522788_ _g24552792_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl24682822_
                                                _hd24672819_
                                                _hd24642809_
                                                _hd24612799_)))
                                           (_g24522788_ _g24552792_))))
                                   (_g24522788_ _g24552792_))))
                           (_g24522788_ _g24552792_)))))
                (_g24512846_ _$stx2448_)))))))
    (define |gxc[:0:]#meta-state|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g10012_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g10013_|
                   (cons |gxc[1]#_g10014_|
                         (cons |gxc[1]#_g10015_|
                               (cons (cons |gxc[1]#_g10016_|
                                           (cons |gxc[1]#_g10017_|
                                                 (cons |gxc[1]#_g10018_|
                                                       (cons |gxc[1]#_g10019_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g10020_|
                                                 (cons |gxc[1]#_g10021_|
                                                       (cons |gxc[1]#_g10022_|
                                                             (cons |gxc[1]#_g10023_|
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
       |gxc[1]#_g10024_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g10025_|
                   (cons |gxc[1]#_g10026_|
                         (cons |gxc[1]#_g10027_|
                               (cons (cons |gxc[1]#_g10028_|
                                           (cons |gxc[1]#_g10029_|
                                                 (cons |gxc[1]#_g10030_|
                                                       (cons |gxc[1]#_g10031_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g10032_|
                                                 (cons |gxc[1]#_g10033_|
                                                       (cons |gxc[1]#_g10034_|
                                                             (cons |gxc[1]#_g10035_|
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
