(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gxc[1]#_g11854_|
    (gx#make-syntax-quote 'meta-state::t #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g11855_|
    (gx#make-syntax-quote 'meta-state::t #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g11856_|
    (gx#make-syntax-quote
     'make-meta-state
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g11857_|
    (gx#make-syntax-quote 'meta-state? #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g11858_|
    (gx#make-syntax-quote
     'meta-state-src
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g11859_|
    (gx#make-syntax-quote 'meta-state-n #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g11860_|
    (gx#make-syntax-quote
     'meta-state-open
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g11861_|
    (gx#make-syntax-quote
     'meta-state-blocks
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g11862_|
    (gx#make-syntax-quote
     'meta-state-src-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g11863_|
    (gx#make-syntax-quote
     'meta-state-n-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g11864_|
    (gx#make-syntax-quote
     'meta-state-open-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g11865_|
    (gx#make-syntax-quote
     'meta-state-blocks-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g11866_|
    (gx#make-syntax-quote
     'meta-state-block::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g11867_|
    (gx#make-syntax-quote
     'meta-state-block::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g11868_|
    (gx#make-syntax-quote
     'make-meta-state-block
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g11869_|
    (gx#make-syntax-quote
     'meta-state-block?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g11870_|
    (gx#make-syntax-quote
     'meta-state-block-ctx
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g11871_|
    (gx#make-syntax-quote
     'meta-state-block-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g11872_|
    (gx#make-syntax-quote
     'meta-state-block-n
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g11873_|
    (gx#make-syntax-quote
     'meta-state-block-code
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g11874_|
    (gx#make-syntax-quote
     'meta-state-block-ctx-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g11875_|
    (gx#make-syntax-quote
     'meta-state-block-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g11876_|
    (gx#make-syntax-quote
     'meta-state-block-n-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g11877_|
    (gx#make-syntax-quote
     'meta-state-block-code-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#defcompile-method|
      (lambda (_$stx3036_)
        (let* ((_g30423121_
                (lambda (_g30433117_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g30433117_)))
               (_g30413195_
                (lambda (_g30433125_)
                  (if (gx#stx-pair? _g30433125_)
                      (let ((_e31043128_ (gx#syntax-e _g30433125_)))
                        (let ((_hd31053132_ (##car _e31043128_))
                              (_tl31063135_ (##cdr _e31043128_)))
                          (if (gx#stx-pair? _tl31063135_)
                              (let ((_e31073138_ (gx#syntax-e _tl31063135_)))
                                (let ((_hd31083142_ (##car _e31073138_))
                                      (_tl31093145_ (##cdr _e31073138_)))
                                  (if (gx#stx-pair? _tl31093145_)
                                      (let ((_e31103148_
                                             (gx#syntax-e _tl31093145_)))
                                        (let ((_hd31113152_
                                               (##car _e31103148_))
                                              (_tl31123155_
                                               (##cdr _e31103148_)))
                                          (if (gx#stx-pair? _hd31113152_)
                                              (let ((_e31133158_
                                                     (gx#syntax-e
                                                      _hd31113152_)))
                                                (let ((_hd31143162_
                                                       (##car _e31133158_))
                                                      (_tl31153165_
                                                       (##cdr _e31133158_)))
                                                  ((lambda (_L3168_
                                                            _L3170_
                                                            _L3171_
                                                            _L3172_
                                                            _L3173_)
                                                     (if (gx#identifier?
                                                          _L3172_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'begin)
                                                               (cons (cons _L3173_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons '#f
                                         (cons (cons _L3171_ _L3170_)
                                               _L3168_)))
                             (cons (cons (gx#datum->syntax '#f 'define)
                                         (cons (cons _L3172_
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
                                                 (cons _L3171_ '()))
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
                 (_g30423121_ _g30433125_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl31123155_
                                                   _tl31153165_
                                                   _hd31143162_
                                                   _hd31083142_
                                                   _hd31053132_)))
                                              (_g30423121_ _g30433125_))))
                                      (_g30423121_ _g30433125_))))
                              (_g30423121_ _g30433125_))))
                      (_g30423121_ _g30433125_))))
               (_g30403376_
                (lambda (_g30433199_)
                  (if (gx#stx-pair? _g30433199_)
                      (let ((_e30613202_ (gx#syntax-e _g30433199_)))
                        (let ((_hd30623206_ (##car _e30613202_))
                              (_tl30633209_ (##cdr _e30613202_)))
                          (if (gx#stx-pair? _tl30633209_)
                              (let ((_e30643212_ (gx#syntax-e _tl30633209_)))
                                (let ((_hd30653216_ (##car _e30643212_))
                                      (_tl30663219_ (##cdr _e30643212_)))
                                  (if (gx#stx-datum? _hd30653216_)
                                      (if (equal? (gx#stx-e _hd30653216_) '#f)
                                          (if (gx#stx-pair? _tl30663219_)
                                              (let ((_e30673222_
                                                     (gx#syntax-e
                                                      _tl30663219_)))
                                                (let ((_hd30683226_
                                                       (##car _e30673222_))
                                                      (_tl30693229_
                                                       (##cdr _e30673222_)))
                                                  (if (gx#stx-pair?
                                                       _hd30683226_)
                                                      (let ((_e30703232_
                                                             (gx#syntax-e
                                                              _hd30683226_)))
                                                        (let ((_hd30713236_
                                                               (##car _e30703232_))
                                                              (_tl30723239_
                                                               (##cdr _e30703232_)))
                                                          (if (gx#stx-pair/null?
                                                               _tl30723239_)
                                                              (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _tl30723239_)
                                '0)
                          (let ((_g11850_
                                 (gx#syntax-split-splice _tl30723239_ '0)))
                            (begin
                              (let ((_g11851_ (values-count _g11850_)))
                                (if (not (fx= _g11851_ 2))
                                    (error "Context expects 2 values"
                                           _g11851_)))
                              (let ((_target30733242_ (values-ref _g11850_ 0))
                                    (_tl30753245_ (values-ref _g11850_ 1)))
                                (if (gx#stx-null? _tl30753245_)
                                    (letrec ((_loop30763248_
                                              (lambda (_hd30743252_
                                                       _super30803255_)
                                                (if (gx#stx-pair? _hd30743252_)
                                                    (let ((_e30773258_
                                                           (gx#syntax-e
                                                            _hd30743252_)))
                                                      (let ((_lp-hd30783262_
                                                             (##car _e30773258_))
                                                            (_lp-tl30793265_
                                                             (##cdr _e30773258_)))
                                                        (_loop30763248_
                                                         _lp-tl30793265_
                                                         (cons _lp-hd30783262_
                                                               _super30803255_))))
                                                    (let ((_super30813268_
                                                           (reverse _super30803255_)))
                                                      (if (gx#stx-pair/null?
                                                           _tl30693229_)
                                                          (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tl30693229_)
                            '0)
                      (let ((_g11852_
                             (gx#syntax-split-splice _tl30693229_ '0)))
                        (begin
                          (let ((_g11853_ (values-count _g11852_)))
                            (if (not (fx= _g11853_ 2))
                                (error "Context expects 2 values" _g11853_)))
                          (let ((_target30823272_ (values-ref _g11852_ 0))
                                (_tl30843275_ (values-ref _g11852_ 1)))
                            (if (gx#stx-null? _tl30843275_)
                                (letrec ((_loop30853278_
                                          (lambda (_hd30833282_
                                                   _method30893285_
                                                   _symbol30903287_)
                                            (if (gx#stx-pair? _hd30833282_)
                                                (let ((_e30863290_
                                                       (gx#syntax-e
                                                        _hd30833282_)))
                                                  (let ((_lp-hd30873294_
                                                         (##car _e30863290_))
                                                        (_lp-tl30883297_
                                                         (##cdr _e30863290_)))
                                                    (if (gx#stx-pair?
                                                         _lp-hd30873294_)
                                                        (let ((_e30933300_
                                                               (gx#syntax-e
                                                                _lp-hd30873294_)))
                                                          (let ((_hd30943304_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e30933300_))
                        (_tl30953307_ (##cdr _e30933300_)))
                    (if (gx#stx-pair? _tl30953307_)
                        (let ((_e30963310_ (gx#syntax-e _tl30953307_)))
                          (let ((_hd30973314_ (##car _e30963310_))
                                (_tl30983317_ (##cdr _e30963310_)))
                            (if (gx#stx-null? _tl30983317_)
                                (_loop30853278_
                                 _lp-tl30883297_
                                 (cons _hd30973314_ _method30893285_)
                                 (cons _hd30943304_ _symbol30903287_))
                                (_g30413195_ _g30433199_))))
                        (_g30413195_ _g30433199_))))
                (_g30413195_ _g30433199_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_method30913320_
                                                       (reverse _method30893285_))
                                                      (_symbol30923323_
                                                       (reverse _symbol30903287_)))
                                                  ((lambda (_L3326_
                                                            _L3328_
                                                            _L3329_
                                                            _L3330_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'define)
                                                           (cons _L3330_
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
                 (foldr (lambda (_g33563362_ _g33573365_)
                          (cons (cons (gx#datum->syntax '#f 'hash-copy!)
                                      (cons (gx#datum->syntax '#f 'tbl)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'force)
                                                        (cons _g33563362_ '()))
                                                  '())))
                                _g33573365_))
                        (begin
                          (gx#syntax-check-splice-targets _L3326_ _L3328_)
                          (foldr (lambda (_g33583368_ _g33593371_ _g33603373_)
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
                         (cons _g33593371_ '()))
                   (cons _g33583368_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _g33603373_))
                                 (cons (gx#datum->syntax '#f 'tbl) '())
                                 _L3326_
                                 _L3328_))
                        _L3329_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _method30913320_
                                                   _symbol30923323_
                                                   _super30813268_
                                                   _hd30713236_))))))
                                  (_loop30853278_ _target30823272_ '() '()))
                                (_g30413195_ _g30433199_)))))
                      (_g30413195_ _g30433199_))
                  (_g30413195_ _g30433199_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop30763248_ _target30733242_ '()))
                                    (_g30413195_ _g30433199_)))))
                          (_g30413195_ _g30433199_))
                      (_g30413195_ _g30433199_))))
              (_g30413195_ _g30433199_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g30413195_ _g30433199_))
                                          (_g30413195_ _g30433199_))
                                      (_g30413195_ _g30433199_))))
                              (_g30413195_ _g30433199_))))
                      (_g30413195_ _g30433199_))))
               (_g30393434_
                (lambda (_g30433380_)
                  (if (gx#stx-pair? _g30433380_)
                      (let ((_e30483383_ (gx#syntax-e _g30433380_)))
                        (let ((_hd30493387_ (##car _e30483383_))
                              (_tl30503390_ (##cdr _e30483383_)))
                          (if (gx#stx-pair? _tl30503390_)
                              (let ((_e30513393_ (gx#syntax-e _tl30503390_)))
                                (let ((_hd30523397_ (##car _e30513393_))
                                      (_tl30533400_ (##cdr _e30513393_)))
                                  (if (gx#stx-pair? _tl30533400_)
                                      (let ((_e30543403_
                                             (gx#syntax-e _tl30533400_)))
                                        (let ((_hd30553407_
                                               (##car _e30543403_))
                                              (_tl30563410_
                                               (##cdr _e30543403_)))
                                          ((lambda (_L3413_
                                                    _L3415_
                                                    _L3416_
                                                    _L3417_)
                                             (if (gx#identifier? _L3415_)
                                                 (cons _L3417_
                                                       (cons _L3416_
                                                             (cons (cons _L3415_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           _L3413_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g30403376_ _g30433380_)))
                                           _tl30563410_
                                           _hd30553407_
                                           _hd30523397_
                                           _hd30493387_)))
                                      (_g30403376_ _g30433380_))))
                              (_g30403376_ _g30433380_))))
                      (_g30403376_ _g30433380_)))))
          (_g30393434_ _$stx3036_))))
    (define |gxc[:0:]#meta-state|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g11854_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g11855_|
                   (cons |gxc[1]#_g11856_|
                         (cons |gxc[1]#_g11857_|
                               (cons (cons |gxc[1]#_g11858_|
                                           (cons |gxc[1]#_g11859_|
                                                 (cons |gxc[1]#_g11860_|
                                                       (cons |gxc[1]#_g11861_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g11862_|
                                                 (cons |gxc[1]#_g11863_|
                                                       (cons |gxc[1]#_g11864_|
                                                             (cons |gxc[1]#_g11865_|
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
       |gxc[1]#_g11866_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g11867_|
                   (cons |gxc[1]#_g11868_|
                         (cons |gxc[1]#_g11869_|
                               (cons (cons |gxc[1]#_g11870_|
                                           (cons |gxc[1]#_g11871_|
                                                 (cons |gxc[1]#_g11872_|
                                                       (cons |gxc[1]#_g11873_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g11874_|
                                                 (cons |gxc[1]#_g11875_|
                                                       (cons |gxc[1]#_g11876_|
                                                             (cons |gxc[1]#_g11877_|
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
