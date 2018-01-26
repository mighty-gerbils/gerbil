(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gxc[1]#_g12157_|
    (gx#make-syntax-quote 'meta-state::t #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g12158_|
    (gx#make-syntax-quote 'meta-state::t #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g12159_|
    (gx#make-syntax-quote
     'make-meta-state
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12160_|
    (gx#make-syntax-quote 'meta-state? #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g12161_|
    (gx#make-syntax-quote
     'meta-state-src
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12162_|
    (gx#make-syntax-quote 'meta-state-n #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g12163_|
    (gx#make-syntax-quote
     'meta-state-open
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12164_|
    (gx#make-syntax-quote
     'meta-state-blocks
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12165_|
    (gx#make-syntax-quote
     'meta-state-src-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12166_|
    (gx#make-syntax-quote
     'meta-state-n-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12167_|
    (gx#make-syntax-quote
     'meta-state-open-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12168_|
    (gx#make-syntax-quote
     'meta-state-blocks-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12169_|
    (gx#make-syntax-quote
     'meta-state-block::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12170_|
    (gx#make-syntax-quote
     'meta-state-block::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12171_|
    (gx#make-syntax-quote
     'make-meta-state-block
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12172_|
    (gx#make-syntax-quote
     'meta-state-block?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12173_|
    (gx#make-syntax-quote
     'meta-state-block-ctx
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12174_|
    (gx#make-syntax-quote
     'meta-state-block-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12175_|
    (gx#make-syntax-quote
     'meta-state-block-n
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12176_|
    (gx#make-syntax-quote
     'meta-state-block-code
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12177_|
    (gx#make-syntax-quote
     'meta-state-block-ctx-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12178_|
    (gx#make-syntax-quote
     'meta-state-block-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12179_|
    (gx#make-syntax-quote
     'meta-state-block-n-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12180_|
    (gx#make-syntax-quote
     'meta-state-block-code-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#defcompile-method|
      (lambda (_$stx3162_)
        (let* ((_g31683247_
                (lambda (_g31693243_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g31693243_)))
               (_g31673321_
                (lambda (_g31693251_)
                  (if (gx#stx-pair? _g31693251_)
                      (let ((_e32303254_ (gx#syntax-e _g31693251_)))
                        (let ((_hd32313258_ (##car _e32303254_))
                              (_tl32323261_ (##cdr _e32303254_)))
                          (if (gx#stx-pair? _tl32323261_)
                              (let ((_e32333264_ (gx#syntax-e _tl32323261_)))
                                (let ((_hd32343268_ (##car _e32333264_))
                                      (_tl32353271_ (##cdr _e32333264_)))
                                  (if (gx#stx-pair? _tl32353271_)
                                      (let ((_e32363274_
                                             (gx#syntax-e _tl32353271_)))
                                        (let ((_hd32373278_
                                               (##car _e32363274_))
                                              (_tl32383281_
                                               (##cdr _e32363274_)))
                                          (if (gx#stx-pair? _hd32373278_)
                                              (let ((_e32393284_
                                                     (gx#syntax-e
                                                      _hd32373278_)))
                                                (let ((_hd32403288_
                                                       (##car _e32393284_))
                                                      (_tl32413291_
                                                       (##cdr _e32393284_)))
                                                  ((lambda (_L3294_
                                                            _L3296_
                                                            _L3297_
                                                            _L3298_
                                                            _L3299_)
                                                     (if (gx#identifier?
                                                          _L3298_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'begin)
                                                               (cons (cons _L3299_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons '#f
                                         (cons (cons _L3297_ _L3296_)
                                               _L3294_)))
                             (cons (cons (gx#datum->syntax '#f 'define)
                                         (cons (cons _L3298_
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
                                                 (cons _L3297_ '()))
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
                 (_g31683247_ _g31693251_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl32383281_
                                                   _tl32413291_
                                                   _hd32403288_
                                                   _hd32343268_
                                                   _hd32313258_)))
                                              (_g31683247_ _g31693251_))))
                                      (_g31683247_ _g31693251_))))
                              (_g31683247_ _g31693251_))))
                      (_g31683247_ _g31693251_))))
               (_g31663502_
                (lambda (_g31693325_)
                  (if (gx#stx-pair? _g31693325_)
                      (let ((_e31873328_ (gx#syntax-e _g31693325_)))
                        (let ((_hd31883332_ (##car _e31873328_))
                              (_tl31893335_ (##cdr _e31873328_)))
                          (if (gx#stx-pair? _tl31893335_)
                              (let ((_e31903338_ (gx#syntax-e _tl31893335_)))
                                (let ((_hd31913342_ (##car _e31903338_))
                                      (_tl31923345_ (##cdr _e31903338_)))
                                  (if (gx#stx-datum? _hd31913342_)
                                      (if (equal? (gx#stx-e _hd31913342_) '#f)
                                          (if (gx#stx-pair? _tl31923345_)
                                              (let ((_e31933348_
                                                     (gx#syntax-e
                                                      _tl31923345_)))
                                                (let ((_hd31943352_
                                                       (##car _e31933348_))
                                                      (_tl31953355_
                                                       (##cdr _e31933348_)))
                                                  (if (gx#stx-pair?
                                                       _hd31943352_)
                                                      (let ((_e31963358_
                                                             (gx#syntax-e
                                                              _hd31943352_)))
                                                        (let ((_hd31973362_
                                                               (##car _e31963358_))
                                                              (_tl31983365_
                                                               (##cdr _e31963358_)))
                                                          (if (gx#stx-pair/null?
                                                               _tl31983365_)
                                                              (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _tl31983365_)
                                '0)
                          (let ((_g12153_
                                 (gx#syntax-split-splice _tl31983365_ '0)))
                            (begin
                              (let ((_g12154_ (values-count _g12153_)))
                                (if (not (fx= _g12154_ 2))
                                    (error "Context expects 2 values"
                                           _g12154_)))
                              (let ((_target31993368_ (values-ref _g12153_ 0))
                                    (_tl32013371_ (values-ref _g12153_ 1)))
                                (if (gx#stx-null? _tl32013371_)
                                    (letrec ((_loop32023374_
                                              (lambda (_hd32003378_
                                                       _super32063381_)
                                                (if (gx#stx-pair? _hd32003378_)
                                                    (let ((_e32033384_
                                                           (gx#syntax-e
                                                            _hd32003378_)))
                                                      (let ((_lp-hd32043388_
                                                             (##car _e32033384_))
                                                            (_lp-tl32053391_
                                                             (##cdr _e32033384_)))
                                                        (_loop32023374_
                                                         _lp-tl32053391_
                                                         (cons _lp-hd32043388_
                                                               _super32063381_))))
                                                    (let ((_super32073394_
                                                           (reverse _super32063381_)))
                                                      (if (gx#stx-pair/null?
                                                           _tl31953355_)
                                                          (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tl31953355_)
                            '0)
                      (let ((_g12155_
                             (gx#syntax-split-splice _tl31953355_ '0)))
                        (begin
                          (let ((_g12156_ (values-count _g12155_)))
                            (if (not (fx= _g12156_ 2))
                                (error "Context expects 2 values" _g12156_)))
                          (let ((_target32083398_ (values-ref _g12155_ 0))
                                (_tl32103401_ (values-ref _g12155_ 1)))
                            (if (gx#stx-null? _tl32103401_)
                                (letrec ((_loop32113404_
                                          (lambda (_hd32093408_
                                                   _method32153411_
                                                   _symbol32163413_)
                                            (if (gx#stx-pair? _hd32093408_)
                                                (let ((_e32123416_
                                                       (gx#syntax-e
                                                        _hd32093408_)))
                                                  (let ((_lp-hd32133420_
                                                         (##car _e32123416_))
                                                        (_lp-tl32143423_
                                                         (##cdr _e32123416_)))
                                                    (if (gx#stx-pair?
                                                         _lp-hd32133420_)
                                                        (let ((_e32193426_
                                                               (gx#syntax-e
                                                                _lp-hd32133420_)))
                                                          (let ((_hd32203430_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e32193426_))
                        (_tl32213433_ (##cdr _e32193426_)))
                    (if (gx#stx-pair? _tl32213433_)
                        (let ((_e32223436_ (gx#syntax-e _tl32213433_)))
                          (let ((_hd32233440_ (##car _e32223436_))
                                (_tl32243443_ (##cdr _e32223436_)))
                            (if (gx#stx-null? _tl32243443_)
                                (_loop32113404_
                                 _lp-tl32143423_
                                 (cons _hd32233440_ _method32153411_)
                                 (cons _hd32203430_ _symbol32163413_))
                                (_g31673321_ _g31693325_))))
                        (_g31673321_ _g31693325_))))
                (_g31673321_ _g31693325_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_method32173446_
                                                       (reverse _method32153411_))
                                                      (_symbol32183449_
                                                       (reverse _symbol32163413_)))
                                                  ((lambda (_L3452_
                                                            _L3454_
                                                            _L3455_
                                                            _L3456_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'define)
                                                           (cons _L3456_
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
                 (foldr (lambda (_g34823488_ _g34833491_)
                          (cons (cons (gx#datum->syntax '#f 'hash-copy!)
                                      (cons (gx#datum->syntax '#f 'tbl)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'force)
                                                        (cons _g34823488_ '()))
                                                  '())))
                                _g34833491_))
                        (begin
                          (gx#syntax-check-splice-targets _L3452_ _L3454_)
                          (foldr (lambda (_g34843494_ _g34853497_ _g34863499_)
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
                         (cons _g34853497_ '()))
                   (cons _g34843494_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _g34863499_))
                                 (cons (gx#datum->syntax '#f 'tbl) '())
                                 _L3452_
                                 _L3454_))
                        _L3455_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _method32173446_
                                                   _symbol32183449_
                                                   _super32073394_
                                                   _hd31973362_))))))
                                  (_loop32113404_ _target32083398_ '() '()))
                                (_g31673321_ _g31693325_)))))
                      (_g31673321_ _g31693325_))
                  (_g31673321_ _g31693325_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop32023374_ _target31993368_ '()))
                                    (_g31673321_ _g31693325_)))))
                          (_g31673321_ _g31693325_))
                      (_g31673321_ _g31693325_))))
              (_g31673321_ _g31693325_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g31673321_ _g31693325_))
                                          (_g31673321_ _g31693325_))
                                      (_g31673321_ _g31693325_))))
                              (_g31673321_ _g31693325_))))
                      (_g31673321_ _g31693325_))))
               (_g31653560_
                (lambda (_g31693506_)
                  (if (gx#stx-pair? _g31693506_)
                      (let ((_e31743509_ (gx#syntax-e _g31693506_)))
                        (let ((_hd31753513_ (##car _e31743509_))
                              (_tl31763516_ (##cdr _e31743509_)))
                          (if (gx#stx-pair? _tl31763516_)
                              (let ((_e31773519_ (gx#syntax-e _tl31763516_)))
                                (let ((_hd31783523_ (##car _e31773519_))
                                      (_tl31793526_ (##cdr _e31773519_)))
                                  (if (gx#stx-pair? _tl31793526_)
                                      (let ((_e31803529_
                                             (gx#syntax-e _tl31793526_)))
                                        (let ((_hd31813533_
                                               (##car _e31803529_))
                                              (_tl31823536_
                                               (##cdr _e31803529_)))
                                          ((lambda (_L3539_
                                                    _L3541_
                                                    _L3542_
                                                    _L3543_)
                                             (if (gx#identifier? _L3541_)
                                                 (cons _L3543_
                                                       (cons _L3542_
                                                             (cons (cons _L3541_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           _L3539_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g31663502_ _g31693506_)))
                                           _tl31823536_
                                           _hd31813533_
                                           _hd31783523_
                                           _hd31753513_)))
                                      (_g31663502_ _g31693506_))))
                              (_g31663502_ _g31693506_))))
                      (_g31663502_ _g31693506_)))))
          (_g31653560_ _$stx3162_))))
    (define |gxc[:0:]#meta-state|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g12157_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g12158_|
                   (cons |gxc[1]#_g12159_|
                         (cons |gxc[1]#_g12160_|
                               (cons (cons |gxc[1]#_g12161_|
                                           (cons |gxc[1]#_g12162_|
                                                 (cons |gxc[1]#_g12163_|
                                                       (cons |gxc[1]#_g12164_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g12165_|
                                                 (cons |gxc[1]#_g12166_|
                                                       (cons |gxc[1]#_g12167_|
                                                             (cons |gxc[1]#_g12168_|
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
       |gxc[1]#_g12169_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g12170_|
                   (cons |gxc[1]#_g12171_|
                         (cons |gxc[1]#_g12172_|
                               (cons (cons |gxc[1]#_g12173_|
                                           (cons |gxc[1]#_g12174_|
                                                 (cons |gxc[1]#_g12175_|
                                                       (cons |gxc[1]#_g12176_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g12177_|
                                                 (cons |gxc[1]#_g12178_|
                                                       (cons |gxc[1]#_g12179_|
                                                             (cons |gxc[1]#_g12180_|
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
