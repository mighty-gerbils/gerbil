(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gxc[1]#_g12119_|
    (gx#make-syntax-quote 'meta-state::t #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g12120_|
    (gx#make-syntax-quote 'meta-state::t #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g12121_|
    (gx#make-syntax-quote
     'make-meta-state
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12122_|
    (gx#make-syntax-quote 'meta-state? #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g12123_|
    (gx#make-syntax-quote
     'meta-state-src
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12124_|
    (gx#make-syntax-quote 'meta-state-n #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g12125_|
    (gx#make-syntax-quote
     'meta-state-open
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12126_|
    (gx#make-syntax-quote
     'meta-state-blocks
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12127_|
    (gx#make-syntax-quote
     'meta-state-src-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12128_|
    (gx#make-syntax-quote
     'meta-state-n-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12129_|
    (gx#make-syntax-quote
     'meta-state-open-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12130_|
    (gx#make-syntax-quote
     'meta-state-blocks-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12131_|
    (gx#make-syntax-quote
     'meta-state-block::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12132_|
    (gx#make-syntax-quote
     'meta-state-block::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12133_|
    (gx#make-syntax-quote
     'make-meta-state-block
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12134_|
    (gx#make-syntax-quote
     'meta-state-block?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12135_|
    (gx#make-syntax-quote
     'meta-state-block-ctx
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12136_|
    (gx#make-syntax-quote
     'meta-state-block-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12137_|
    (gx#make-syntax-quote
     'meta-state-block-n
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12138_|
    (gx#make-syntax-quote
     'meta-state-block-code
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12139_|
    (gx#make-syntax-quote
     'meta-state-block-ctx-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12140_|
    (gx#make-syntax-quote
     'meta-state-block-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12141_|
    (gx#make-syntax-quote
     'meta-state-block-n-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12142_|
    (gx#make-syntax-quote
     'meta-state-block-code-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#defcompile-method|
      (lambda (_$stx3124_)
        (let* ((_g31303209_
                (lambda (_g31313205_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g31313205_)))
               (_g31293283_
                (lambda (_g31313213_)
                  (if (gx#stx-pair? _g31313213_)
                      (let ((_e31923216_ (gx#syntax-e _g31313213_)))
                        (let ((_hd31933220_ (##car _e31923216_))
                              (_tl31943223_ (##cdr _e31923216_)))
                          (if (gx#stx-pair? _tl31943223_)
                              (let ((_e31953226_ (gx#syntax-e _tl31943223_)))
                                (let ((_hd31963230_ (##car _e31953226_))
                                      (_tl31973233_ (##cdr _e31953226_)))
                                  (if (gx#stx-pair? _tl31973233_)
                                      (let ((_e31983236_
                                             (gx#syntax-e _tl31973233_)))
                                        (let ((_hd31993240_
                                               (##car _e31983236_))
                                              (_tl32003243_
                                               (##cdr _e31983236_)))
                                          (if (gx#stx-pair? _hd31993240_)
                                              (let ((_e32013246_
                                                     (gx#syntax-e
                                                      _hd31993240_)))
                                                (let ((_hd32023250_
                                                       (##car _e32013246_))
                                                      (_tl32033253_
                                                       (##cdr _e32013246_)))
                                                  ((lambda (_L3256_
                                                            _L3258_
                                                            _L3259_
                                                            _L3260_
                                                            _L3261_)
                                                     (if (gx#identifier?
                                                          _L3260_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'begin)
                                                               (cons (cons _L3261_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons '#f
                                         (cons (cons _L3259_ _L3258_)
                                               _L3256_)))
                             (cons (cons (gx#datum->syntax '#f 'define)
                                         (cons (cons _L3260_
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
                                                 (cons _L3259_ '()))
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
                 (_g31303209_ _g31313213_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl32003243_
                                                   _tl32033253_
                                                   _hd32023250_
                                                   _hd31963230_
                                                   _hd31933220_)))
                                              (_g31303209_ _g31313213_))))
                                      (_g31303209_ _g31313213_))))
                              (_g31303209_ _g31313213_))))
                      (_g31303209_ _g31313213_))))
               (_g31283464_
                (lambda (_g31313287_)
                  (if (gx#stx-pair? _g31313287_)
                      (let ((_e31493290_ (gx#syntax-e _g31313287_)))
                        (let ((_hd31503294_ (##car _e31493290_))
                              (_tl31513297_ (##cdr _e31493290_)))
                          (if (gx#stx-pair? _tl31513297_)
                              (let ((_e31523300_ (gx#syntax-e _tl31513297_)))
                                (let ((_hd31533304_ (##car _e31523300_))
                                      (_tl31543307_ (##cdr _e31523300_)))
                                  (if (gx#stx-datum? _hd31533304_)
                                      (if (equal? (gx#stx-e _hd31533304_) '#f)
                                          (if (gx#stx-pair? _tl31543307_)
                                              (let ((_e31553310_
                                                     (gx#syntax-e
                                                      _tl31543307_)))
                                                (let ((_hd31563314_
                                                       (##car _e31553310_))
                                                      (_tl31573317_
                                                       (##cdr _e31553310_)))
                                                  (if (gx#stx-pair?
                                                       _hd31563314_)
                                                      (let ((_e31583320_
                                                             (gx#syntax-e
                                                              _hd31563314_)))
                                                        (let ((_hd31593324_
                                                               (##car _e31583320_))
                                                              (_tl31603327_
                                                               (##cdr _e31583320_)))
                                                          (if (gx#stx-pair/null?
                                                               _tl31603327_)
                                                              (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _tl31603327_)
                                '0)
                          (let ((_g12115_
                                 (gx#syntax-split-splice _tl31603327_ '0)))
                            (begin
                              (let ((_g12116_ (values-count _g12115_)))
                                (if (not (fx= _g12116_ 2))
                                    (error "Context expects 2 values"
                                           _g12116_)))
                              (let ((_target31613330_ (values-ref _g12115_ 0))
                                    (_tl31633333_ (values-ref _g12115_ 1)))
                                (if (gx#stx-null? _tl31633333_)
                                    (letrec ((_loop31643336_
                                              (lambda (_hd31623340_
                                                       _super31683343_)
                                                (if (gx#stx-pair? _hd31623340_)
                                                    (let ((_e31653346_
                                                           (gx#syntax-e
                                                            _hd31623340_)))
                                                      (let ((_lp-hd31663350_
                                                             (##car _e31653346_))
                                                            (_lp-tl31673353_
                                                             (##cdr _e31653346_)))
                                                        (_loop31643336_
                                                         _lp-tl31673353_
                                                         (cons _lp-hd31663350_
                                                               _super31683343_))))
                                                    (let ((_super31693356_
                                                           (reverse _super31683343_)))
                                                      (if (gx#stx-pair/null?
                                                           _tl31573317_)
                                                          (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tl31573317_)
                            '0)
                      (let ((_g12117_
                             (gx#syntax-split-splice _tl31573317_ '0)))
                        (begin
                          (let ((_g12118_ (values-count _g12117_)))
                            (if (not (fx= _g12118_ 2))
                                (error "Context expects 2 values" _g12118_)))
                          (let ((_target31703360_ (values-ref _g12117_ 0))
                                (_tl31723363_ (values-ref _g12117_ 1)))
                            (if (gx#stx-null? _tl31723363_)
                                (letrec ((_loop31733366_
                                          (lambda (_hd31713370_
                                                   _method31773373_
                                                   _symbol31783375_)
                                            (if (gx#stx-pair? _hd31713370_)
                                                (let ((_e31743378_
                                                       (gx#syntax-e
                                                        _hd31713370_)))
                                                  (let ((_lp-hd31753382_
                                                         (##car _e31743378_))
                                                        (_lp-tl31763385_
                                                         (##cdr _e31743378_)))
                                                    (if (gx#stx-pair?
                                                         _lp-hd31753382_)
                                                        (let ((_e31813388_
                                                               (gx#syntax-e
                                                                _lp-hd31753382_)))
                                                          (let ((_hd31823392_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e31813388_))
                        (_tl31833395_ (##cdr _e31813388_)))
                    (if (gx#stx-pair? _tl31833395_)
                        (let ((_e31843398_ (gx#syntax-e _tl31833395_)))
                          (let ((_hd31853402_ (##car _e31843398_))
                                (_tl31863405_ (##cdr _e31843398_)))
                            (if (gx#stx-null? _tl31863405_)
                                (_loop31733366_
                                 _lp-tl31763385_
                                 (cons _hd31853402_ _method31773373_)
                                 (cons _hd31823392_ _symbol31783375_))
                                (_g31293283_ _g31313287_))))
                        (_g31293283_ _g31313287_))))
                (_g31293283_ _g31313287_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_method31793408_
                                                       (reverse _method31773373_))
                                                      (_symbol31803411_
                                                       (reverse _symbol31783375_)))
                                                  ((lambda (_L3414_
                                                            _L3416_
                                                            _L3417_
                                                            _L3418_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'define)
                                                           (cons _L3418_
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
                 (foldr (lambda (_g34443450_ _g34453453_)
                          (cons (cons (gx#datum->syntax '#f 'hash-copy!)
                                      (cons (gx#datum->syntax '#f 'tbl)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'force)
                                                        (cons _g34443450_ '()))
                                                  '())))
                                _g34453453_))
                        (begin
                          (gx#syntax-check-splice-targets _L3414_ _L3416_)
                          (foldr (lambda (_g34463456_ _g34473459_ _g34483461_)
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
                         (cons _g34473459_ '()))
                   (cons _g34463456_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _g34483461_))
                                 (cons (gx#datum->syntax '#f 'tbl) '())
                                 _L3414_
                                 _L3416_))
                        _L3417_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _method31793408_
                                                   _symbol31803411_
                                                   _super31693356_
                                                   _hd31593324_))))))
                                  (_loop31733366_ _target31703360_ '() '()))
                                (_g31293283_ _g31313287_)))))
                      (_g31293283_ _g31313287_))
                  (_g31293283_ _g31313287_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop31643336_ _target31613330_ '()))
                                    (_g31293283_ _g31313287_)))))
                          (_g31293283_ _g31313287_))
                      (_g31293283_ _g31313287_))))
              (_g31293283_ _g31313287_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g31293283_ _g31313287_))
                                          (_g31293283_ _g31313287_))
                                      (_g31293283_ _g31313287_))))
                              (_g31293283_ _g31313287_))))
                      (_g31293283_ _g31313287_))))
               (_g31273522_
                (lambda (_g31313468_)
                  (if (gx#stx-pair? _g31313468_)
                      (let ((_e31363471_ (gx#syntax-e _g31313468_)))
                        (let ((_hd31373475_ (##car _e31363471_))
                              (_tl31383478_ (##cdr _e31363471_)))
                          (if (gx#stx-pair? _tl31383478_)
                              (let ((_e31393481_ (gx#syntax-e _tl31383478_)))
                                (let ((_hd31403485_ (##car _e31393481_))
                                      (_tl31413488_ (##cdr _e31393481_)))
                                  (if (gx#stx-pair? _tl31413488_)
                                      (let ((_e31423491_
                                             (gx#syntax-e _tl31413488_)))
                                        (let ((_hd31433495_
                                               (##car _e31423491_))
                                              (_tl31443498_
                                               (##cdr _e31423491_)))
                                          ((lambda (_L3501_
                                                    _L3503_
                                                    _L3504_
                                                    _L3505_)
                                             (if (gx#identifier? _L3503_)
                                                 (cons _L3505_
                                                       (cons _L3504_
                                                             (cons (cons _L3503_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           _L3501_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g31283464_ _g31313468_)))
                                           _tl31443498_
                                           _hd31433495_
                                           _hd31403485_
                                           _hd31373475_)))
                                      (_g31283464_ _g31313468_))))
                              (_g31283464_ _g31313468_))))
                      (_g31283464_ _g31313468_)))))
          (_g31273522_ _$stx3124_))))
    (define |gxc[:0:]#meta-state|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g12119_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g12120_|
                   (cons |gxc[1]#_g12121_|
                         (cons |gxc[1]#_g12122_|
                               (cons (cons |gxc[1]#_g12123_|
                                           (cons |gxc[1]#_g12124_|
                                                 (cons |gxc[1]#_g12125_|
                                                       (cons |gxc[1]#_g12126_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g12127_|
                                                 (cons |gxc[1]#_g12128_|
                                                       (cons |gxc[1]#_g12129_|
                                                             (cons |gxc[1]#_g12130_|
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
       |gxc[1]#_g12131_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g12132_|
                   (cons |gxc[1]#_g12133_|
                         (cons |gxc[1]#_g12134_|
                               (cons (cons |gxc[1]#_g12135_|
                                           (cons |gxc[1]#_g12136_|
                                                 (cons |gxc[1]#_g12137_|
                                                       (cons |gxc[1]#_g12138_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g12139_|
                                                 (cons |gxc[1]#_g12140_|
                                                       (cons |gxc[1]#_g12141_|
                                                             (cons |gxc[1]#_g12142_|
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
