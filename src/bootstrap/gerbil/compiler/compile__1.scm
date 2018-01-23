(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gxc[1]#_g12098_|
    (gx#make-syntax-quote 'meta-state::t #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g12099_|
    (gx#make-syntax-quote 'meta-state::t #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g12100_|
    (gx#make-syntax-quote
     'make-meta-state
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12101_|
    (gx#make-syntax-quote 'meta-state? #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g12102_|
    (gx#make-syntax-quote
     'meta-state-src
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12103_|
    (gx#make-syntax-quote 'meta-state-n #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g12104_|
    (gx#make-syntax-quote
     'meta-state-open
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12105_|
    (gx#make-syntax-quote
     'meta-state-blocks
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12106_|
    (gx#make-syntax-quote
     'meta-state-src-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12107_|
    (gx#make-syntax-quote
     'meta-state-n-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12108_|
    (gx#make-syntax-quote
     'meta-state-open-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12109_|
    (gx#make-syntax-quote
     'meta-state-blocks-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12110_|
    (gx#make-syntax-quote
     'meta-state-block::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12111_|
    (gx#make-syntax-quote
     'meta-state-block::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12112_|
    (gx#make-syntax-quote
     'make-meta-state-block
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12113_|
    (gx#make-syntax-quote
     'meta-state-block?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12114_|
    (gx#make-syntax-quote
     'meta-state-block-ctx
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12115_|
    (gx#make-syntax-quote
     'meta-state-block-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12116_|
    (gx#make-syntax-quote
     'meta-state-block-n
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12117_|
    (gx#make-syntax-quote
     'meta-state-block-code
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12118_|
    (gx#make-syntax-quote
     'meta-state-block-ctx-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12119_|
    (gx#make-syntax-quote
     'meta-state-block-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12120_|
    (gx#make-syntax-quote
     'meta-state-block-n-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12121_|
    (gx#make-syntax-quote
     'meta-state-block-code-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#defcompile-method|
      (lambda (_$stx3158_)
        (let* ((_g31643243_
                (lambda (_g31653239_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g31653239_)))
               (_g31633317_
                (lambda (_g31653247_)
                  (if (gx#stx-pair? _g31653247_)
                      (let ((_e32263250_ (gx#syntax-e _g31653247_)))
                        (let ((_hd32273254_ (##car _e32263250_))
                              (_tl32283257_ (##cdr _e32263250_)))
                          (if (gx#stx-pair? _tl32283257_)
                              (let ((_e32293260_ (gx#syntax-e _tl32283257_)))
                                (let ((_hd32303264_ (##car _e32293260_))
                                      (_tl32313267_ (##cdr _e32293260_)))
                                  (if (gx#stx-pair? _tl32313267_)
                                      (let ((_e32323270_
                                             (gx#syntax-e _tl32313267_)))
                                        (let ((_hd32333274_
                                               (##car _e32323270_))
                                              (_tl32343277_
                                               (##cdr _e32323270_)))
                                          (if (gx#stx-pair? _hd32333274_)
                                              (let ((_e32353280_
                                                     (gx#syntax-e
                                                      _hd32333274_)))
                                                (let ((_hd32363284_
                                                       (##car _e32353280_))
                                                      (_tl32373287_
                                                       (##cdr _e32353280_)))
                                                  ((lambda (_L3290_
                                                            _L3292_
                                                            _L3293_
                                                            _L3294_
                                                            _L3295_)
                                                     (if (gx#identifier?
                                                          _L3294_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'begin)
                                                               (cons (cons _L3295_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons '#f
                                         (cons (cons _L3293_ _L3292_)
                                               _L3290_)))
                             (cons (cons (gx#datum->syntax '#f 'define)
                                         (cons (cons _L3294_
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
                                                 (cons _L3293_ '()))
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
                 (_g31643243_ _g31653247_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl32343277_
                                                   _tl32373287_
                                                   _hd32363284_
                                                   _hd32303264_
                                                   _hd32273254_)))
                                              (_g31643243_ _g31653247_))))
                                      (_g31643243_ _g31653247_))))
                              (_g31643243_ _g31653247_))))
                      (_g31643243_ _g31653247_))))
               (_g31623498_
                (lambda (_g31653321_)
                  (if (gx#stx-pair? _g31653321_)
                      (let ((_e31833324_ (gx#syntax-e _g31653321_)))
                        (let ((_hd31843328_ (##car _e31833324_))
                              (_tl31853331_ (##cdr _e31833324_)))
                          (if (gx#stx-pair? _tl31853331_)
                              (let ((_e31863334_ (gx#syntax-e _tl31853331_)))
                                (let ((_hd31873338_ (##car _e31863334_))
                                      (_tl31883341_ (##cdr _e31863334_)))
                                  (if (gx#stx-datum? _hd31873338_)
                                      (if (equal? (gx#stx-e _hd31873338_) '#f)
                                          (if (gx#stx-pair? _tl31883341_)
                                              (let ((_e31893344_
                                                     (gx#syntax-e
                                                      _tl31883341_)))
                                                (let ((_hd31903348_
                                                       (##car _e31893344_))
                                                      (_tl31913351_
                                                       (##cdr _e31893344_)))
                                                  (if (gx#stx-pair?
                                                       _hd31903348_)
                                                      (let ((_e31923354_
                                                             (gx#syntax-e
                                                              _hd31903348_)))
                                                        (let ((_hd31933358_
                                                               (##car _e31923354_))
                                                              (_tl31943361_
                                                               (##cdr _e31923354_)))
                                                          (if (gx#stx-pair/null?
                                                               _tl31943361_)
                                                              (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _tl31943361_)
                                '0)
                          (let ((_g12094_
                                 (gx#syntax-split-splice _tl31943361_ '0)))
                            (begin
                              (let ((_g12095_ (values-count _g12094_)))
                                (if (not (fx= _g12095_ 2))
                                    (error "Context expects 2 values"
                                           _g12095_)))
                              (let ((_target31953364_ (values-ref _g12094_ 0))
                                    (_tl31973367_ (values-ref _g12094_ 1)))
                                (if (gx#stx-null? _tl31973367_)
                                    (letrec ((_loop31983370_
                                              (lambda (_hd31963374_
                                                       _super32023377_)
                                                (if (gx#stx-pair? _hd31963374_)
                                                    (let ((_e31993380_
                                                           (gx#syntax-e
                                                            _hd31963374_)))
                                                      (let ((_lp-hd32003384_
                                                             (##car _e31993380_))
                                                            (_lp-tl32013387_
                                                             (##cdr _e31993380_)))
                                                        (_loop31983370_
                                                         _lp-tl32013387_
                                                         (cons _lp-hd32003384_
                                                               _super32023377_))))
                                                    (let ((_super32033390_
                                                           (reverse _super32023377_)))
                                                      (if (gx#stx-pair/null?
                                                           _tl31913351_)
                                                          (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tl31913351_)
                            '0)
                      (let ((_g12096_
                             (gx#syntax-split-splice _tl31913351_ '0)))
                        (begin
                          (let ((_g12097_ (values-count _g12096_)))
                            (if (not (fx= _g12097_ 2))
                                (error "Context expects 2 values" _g12097_)))
                          (let ((_target32043394_ (values-ref _g12096_ 0))
                                (_tl32063397_ (values-ref _g12096_ 1)))
                            (if (gx#stx-null? _tl32063397_)
                                (letrec ((_loop32073400_
                                          (lambda (_hd32053404_
                                                   _method32113407_
                                                   _symbol32123409_)
                                            (if (gx#stx-pair? _hd32053404_)
                                                (let ((_e32083412_
                                                       (gx#syntax-e
                                                        _hd32053404_)))
                                                  (let ((_lp-hd32093416_
                                                         (##car _e32083412_))
                                                        (_lp-tl32103419_
                                                         (##cdr _e32083412_)))
                                                    (if (gx#stx-pair?
                                                         _lp-hd32093416_)
                                                        (let ((_e32153422_
                                                               (gx#syntax-e
                                                                _lp-hd32093416_)))
                                                          (let ((_hd32163426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e32153422_))
                        (_tl32173429_ (##cdr _e32153422_)))
                    (if (gx#stx-pair? _tl32173429_)
                        (let ((_e32183432_ (gx#syntax-e _tl32173429_)))
                          (let ((_hd32193436_ (##car _e32183432_))
                                (_tl32203439_ (##cdr _e32183432_)))
                            (if (gx#stx-null? _tl32203439_)
                                (_loop32073400_
                                 _lp-tl32103419_
                                 (cons _hd32193436_ _method32113407_)
                                 (cons _hd32163426_ _symbol32123409_))
                                (_g31633317_ _g31653321_))))
                        (_g31633317_ _g31653321_))))
                (_g31633317_ _g31653321_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_method32133442_
                                                       (reverse _method32113407_))
                                                      (_symbol32143445_
                                                       (reverse _symbol32123409_)))
                                                  ((lambda (_L3448_
                                                            _L3450_
                                                            _L3451_
                                                            _L3452_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'define)
                                                           (cons _L3452_
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
                 (foldr (lambda (_g34783484_ _g34793487_)
                          (cons (cons (gx#datum->syntax '#f 'hash-copy!)
                                      (cons (gx#datum->syntax '#f 'tbl)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'force)
                                                        (cons _g34783484_ '()))
                                                  '())))
                                _g34793487_))
                        (begin
                          (gx#syntax-check-splice-targets _L3448_ _L3450_)
                          (foldr (lambda (_g34803490_ _g34813493_ _g34823495_)
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
                         (cons _g34813493_ '()))
                   (cons _g34803490_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _g34823495_))
                                 (cons (gx#datum->syntax '#f 'tbl) '())
                                 _L3448_
                                 _L3450_))
                        _L3451_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _method32133442_
                                                   _symbol32143445_
                                                   _super32033390_
                                                   _hd31933358_))))))
                                  (_loop32073400_ _target32043394_ '() '()))
                                (_g31633317_ _g31653321_)))))
                      (_g31633317_ _g31653321_))
                  (_g31633317_ _g31653321_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop31983370_ _target31953364_ '()))
                                    (_g31633317_ _g31653321_)))))
                          (_g31633317_ _g31653321_))
                      (_g31633317_ _g31653321_))))
              (_g31633317_ _g31653321_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g31633317_ _g31653321_))
                                          (_g31633317_ _g31653321_))
                                      (_g31633317_ _g31653321_))))
                              (_g31633317_ _g31653321_))))
                      (_g31633317_ _g31653321_))))
               (_g31613556_
                (lambda (_g31653502_)
                  (if (gx#stx-pair? _g31653502_)
                      (let ((_e31703505_ (gx#syntax-e _g31653502_)))
                        (let ((_hd31713509_ (##car _e31703505_))
                              (_tl31723512_ (##cdr _e31703505_)))
                          (if (gx#stx-pair? _tl31723512_)
                              (let ((_e31733515_ (gx#syntax-e _tl31723512_)))
                                (let ((_hd31743519_ (##car _e31733515_))
                                      (_tl31753522_ (##cdr _e31733515_)))
                                  (if (gx#stx-pair? _tl31753522_)
                                      (let ((_e31763525_
                                             (gx#syntax-e _tl31753522_)))
                                        (let ((_hd31773529_
                                               (##car _e31763525_))
                                              (_tl31783532_
                                               (##cdr _e31763525_)))
                                          ((lambda (_L3535_
                                                    _L3537_
                                                    _L3538_
                                                    _L3539_)
                                             (if (gx#identifier? _L3537_)
                                                 (cons _L3539_
                                                       (cons _L3538_
                                                             (cons (cons _L3537_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           _L3535_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g31623498_ _g31653502_)))
                                           _tl31783532_
                                           _hd31773529_
                                           _hd31743519_
                                           _hd31713509_)))
                                      (_g31623498_ _g31653502_))))
                              (_g31623498_ _g31653502_))))
                      (_g31623498_ _g31653502_)))))
          (_g31613556_ _$stx3158_))))
    (define |gxc[:0:]#meta-state|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g12098_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g12099_|
                   (cons |gxc[1]#_g12100_|
                         (cons |gxc[1]#_g12101_|
                               (cons (cons |gxc[1]#_g12102_|
                                           (cons |gxc[1]#_g12103_|
                                                 (cons |gxc[1]#_g12104_|
                                                       (cons |gxc[1]#_g12105_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g12106_|
                                                 (cons |gxc[1]#_g12107_|
                                                       (cons |gxc[1]#_g12108_|
                                                             (cons |gxc[1]#_g12109_|
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
       |gxc[1]#_g12110_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g12111_|
                   (cons |gxc[1]#_g12112_|
                         (cons |gxc[1]#_g12113_|
                               (cons (cons |gxc[1]#_g12114_|
                                           (cons |gxc[1]#_g12115_|
                                                 (cons |gxc[1]#_g12116_|
                                                       (cons |gxc[1]#_g12117_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g12118_|
                                                 (cons |gxc[1]#_g12119_|
                                                       (cons |gxc[1]#_g12120_|
                                                             (cons |gxc[1]#_g12121_|
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
