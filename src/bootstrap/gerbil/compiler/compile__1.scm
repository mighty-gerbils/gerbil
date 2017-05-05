(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gxc[1]#_g5860_| (gx#core-quote-syntax 'meta-state::t))
  (define |gxc[1]#_g5861_| (gx#core-quote-syntax 'meta-state::t))
  (define |gxc[1]#_g5862_| (gx#core-quote-syntax 'make-meta-state))
  (define |gxc[1]#_g5863_| (gx#core-quote-syntax 'meta-state?))
  (define |gxc[1]#_g5864_| (gx#core-quote-syntax 'meta-state-src))
  (define |gxc[1]#_g5865_| (gx#core-quote-syntax 'meta-state-n))
  (define |gxc[1]#_g5866_| (gx#core-quote-syntax 'meta-state-open))
  (define |gxc[1]#_g5867_| (gx#core-quote-syntax 'meta-state-blocks))
  (define |gxc[1]#_g5868_| (gx#core-quote-syntax 'meta-state-src-set!))
  (define |gxc[1]#_g5869_| (gx#core-quote-syntax 'meta-state-n-set!))
  (define |gxc[1]#_g5870_| (gx#core-quote-syntax 'meta-state-open-set!))
  (define |gxc[1]#_g5871_| (gx#core-quote-syntax 'meta-state-blocks-set!))
  (define |gxc[1]#_g5872_| (gx#core-quote-syntax 'meta-state-block::t))
  (define |gxc[1]#_g5873_| (gx#core-quote-syntax 'meta-state-block::t))
  (define |gxc[1]#_g5874_| (gx#core-quote-syntax 'make-meta-state-block))
  (define |gxc[1]#_g5875_| (gx#core-quote-syntax 'meta-state-block?))
  (define |gxc[1]#_g5876_| (gx#core-quote-syntax 'meta-state-block-ctx))
  (define |gxc[1]#_g5877_| (gx#core-quote-syntax 'meta-state-block-phi))
  (define |gxc[1]#_g5878_| (gx#core-quote-syntax 'meta-state-block-n))
  (define |gxc[1]#_g5879_| (gx#core-quote-syntax 'meta-state-block-code))
  (define |gxc[1]#_g5880_| (gx#core-quote-syntax 'meta-state-block-ctx-set!))
  (define |gxc[1]#_g5881_| (gx#core-quote-syntax 'meta-state-block-phi-set!))
  (define |gxc[1]#_g5882_| (gx#core-quote-syntax 'meta-state-block-n-set!))
  (define |gxc[1]#_g5883_| (gx#core-quote-syntax 'meta-state-block-code-set!))
  (begin
    (define |gxc[:0:]#defcompile-method|
      (lambda (_$stx169_)
        (let ((_g175254_
               (lambda (_g176250_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g176250_))))
          (let ((_g174330_
                 (lambda (_g176258_)
                   (if (gx#stx-pair? _g176258_)
                       (let ((_e237261_ (gx#syntax-e _g176258_)))
                         (let ((_hd238265_ (##car _e237261_))
                               (_tl239268_ (##cdr _e237261_)))
                           (if (gx#stx-pair? _tl239268_)
                               (let ((_e240271_ (gx#syntax-e _tl239268_)))
                                 (let ((_hd241275_ (##car _e240271_))
                                       (_tl242278_ (##cdr _e240271_)))
                                   (if (gx#stx-pair? _tl242278_)
                                       (let ((_e243281_
                                              (gx#syntax-e _tl242278_)))
                                         (let ((_hd244285_ (##car _e243281_))
                                               (_tl245288_ (##cdr _e243281_)))
                                           (if (gx#stx-pair? _hd244285_)
                                               (let ((_e246291_
                                                      (gx#syntax-e
                                                       _hd244285_)))
                                                 (let ((_hd247295_
                                                        (##car _e246291_))
                                                       (_tl248298_
                                                        (##cdr _e246291_)))
                                                   ((lambda (_L301_
                                                             _L303_
                                                             _L304_
                                                             _L305_
                                                             _L306_)
                                                      (if (gx#identifier?
                                                           _L305_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin)
                        (cons (cons _L306_
                                    (cons '#f
                                          (cons (cons _L304_ _L303_) _L301_)))
                              (cons (cons (gx#datum->syntax '#f 'define)
                                          (cons (cons _L305_
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
                                                  (cons _L304_ '()))
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
                  (_g175254_ _g176258_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl245288_
                                                    _tl248298_
                                                    _hd247295_
                                                    _hd241275_
                                                    _hd238265_)))
                                               (_g175254_ _g176258_))))
                                       (_g175254_ _g176258_))))
                               (_g175254_ _g176258_))))
                       (_g175254_ _g176258_)))))
            (let ((_g173511_
                   (lambda (_g176334_)
                     (if (gx#stx-pair? _g176334_)
                         (let ((_e194337_ (gx#syntax-e _g176334_)))
                           (let ((_hd195341_ (##car _e194337_))
                                 (_tl196344_ (##cdr _e194337_)))
                             (if (gx#stx-pair? _tl196344_)
                                 (let ((_e197347_ (gx#syntax-e _tl196344_)))
                                   (let ((_hd198351_ (##car _e197347_))
                                         (_tl199354_ (##cdr _e197347_)))
                                     (if (gx#stx-datum? _hd198351_)
                                         (if (equal? (gx#stx-e _hd198351_) '#f)
                                             (if (gx#stx-pair? _tl199354_)
                                                 (let ((_e200357_
                                                        (gx#syntax-e
                                                         _tl199354_)))
                                                   (let ((_hd201361_
                                                          (##car _e200357_))
                                                         (_tl202364_
                                                          (##cdr _e200357_)))
                                                     (if (gx#stx-pair?
                                                          _hd201361_)
                                                         (let ((_e203367_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd201361_)))
                   (let ((_hd204371_ (##car _e203367_))
                         (_tl205374_ (##cdr _e203367_)))
                     (if (gx#stx-pair/null? _tl205374_)
                         (if (fx>= (gx#stx-length _tl205374_) '0)
                             (let ((_g5856_ (gx#syntax-split-splice
                                             _tl205374_
                                             '0)))
                               (begin
                                 (let ((_g5857_ (values-count _g5856_)))
                                   (if (not (fx= _g5857_ 2))
                                       (error "Context expects 2 values"
                                              _g5857_)))
                                 (let ((_target206377_ (values-ref _g5856_ 0))
                                       (_tl208380_ (values-ref _g5856_ 1)))
                                   (if (gx#stx-null? _tl208380_)
                                       (letrec ((_loop209383_
                                                 (lambda (_hd207387_
                                                          _super213390_)
                                                   (if (gx#stx-pair?
                                                        _hd207387_)
                                                       (let ((_e210393_
                                                              (gx#syntax-e
                                                               _hd207387_)))
                                                         (let ((_lp-hd211397_
                                                                (##car _e210393_))
                                                               (_lp-tl212400_
                                                                (##cdr _e210393_)))
                                                           (_loop209383_
                                                            _lp-tl212400_
                                                            (cons _lp-hd211397_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _super213390_))))
               (let ((_super214403_ (reverse _super213390_)))
                 (if (gx#stx-pair/null? _tl202364_)
                     (if (fx>= (gx#stx-length _tl202364_) '0)
                         (let ((_g5858_ (gx#syntax-split-splice
                                         _tl202364_
                                         '0)))
                           (begin
                             (let ((_g5859_ (values-count _g5858_)))
                               (if (not (fx= _g5859_ 2))
                                   (error "Context expects 2 values" _g5859_)))
                             (let ((_target215407_ (values-ref _g5858_ 0))
                                   (_tl217410_ (values-ref _g5858_ 1)))
                               (if (gx#stx-null? _tl217410_)
                                   (letrec ((_loop218413_
                                             (lambda (_hd216417_
                                                      _method222420_
                                                      _symbol223422_)
                                               (if (gx#stx-pair? _hd216417_)
                                                   (let ((_e219425_
                                                          (gx#syntax-e
                                                           _hd216417_)))
                                                     (let ((_lp-hd220429_
                                                            (##car _e219425_))
                                                           (_lp-tl221432_
                                                            (##cdr _e219425_)))
                                                       (if (gx#stx-pair?
                                                            _lp-hd220429_)
                                                           (let ((_e226435_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _lp-hd220429_)))
                     (let ((_hd227439_ (##car _e226435_))
                           (_tl228442_ (##cdr _e226435_)))
                       (if (gx#stx-pair? _tl228442_)
                           (let ((_e229445_ (gx#syntax-e _tl228442_)))
                             (let ((_hd230449_ (##car _e229445_))
                                   (_tl231452_ (##cdr _e229445_)))
                               (if (gx#stx-null? _tl231452_)
                                   (_loop218413_
                                    _lp-tl221432_
                                    (cons _hd230449_ _method222420_)
                                    (cons _hd227439_ _symbol223422_))
                                   (_g174330_ _g176334_))))
                           (_g174330_ _g176334_))))
                   (_g174330_ _g176334_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_method224455_
                                                          (reverse _method222420_))
                                                         (_symbol225458_
                                                          (reverse _symbol223422_)))
                                                     ((lambda (_L461_
                                                               _L463_
                                                               _L464_
                                                               _L465_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'define)
                                                              (cons _L465_
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
                    (foldr (lambda (_g491497_ _g492500_)
                             (cons (cons (gx#datum->syntax '#f 'hash-copy!)
                                         (cons (gx#datum->syntax '#f 'tbl)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'force)
                                                           (cons _g491497_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   _g492500_))
                           (begin
                             (gx#syntax-check-splice-targets _L461_ _L463_)
                             (foldr (lambda (_g493503_ _g494506_ _g495508_)
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
                            (cons _g494506_ '()))
                      (cons _g493503_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g495508_))
                                    (cons (gx#datum->syntax '#f 'tbl) '())
                                    _L461_
                                    _L463_))
                           _L464_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  '()))))
              _method224455_
              _symbol225458_
              _super214403_
              _hd204371_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop218413_ _target215407_ '() '()))
                                   (_g174330_ _g176334_)))))
                         (_g174330_ _g176334_))
                     (_g174330_ _g176334_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop209383_ _target206377_ '()))
                                       (_g174330_ _g176334_)))))
                             (_g174330_ _g176334_))
                         (_g174330_ _g176334_))))
                 (_g174330_ _g176334_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g174330_ _g176334_))
                                             (_g174330_ _g176334_))
                                         (_g174330_ _g176334_))))
                                 (_g174330_ _g176334_))))
                         (_g174330_ _g176334_)))))
              (let ((_g172569_
                     (lambda (_g176515_)
                       (if (gx#stx-pair? _g176515_)
                           (let ((_e181518_ (gx#syntax-e _g176515_)))
                             (let ((_hd182522_ (##car _e181518_))
                                   (_tl183525_ (##cdr _e181518_)))
                               (if (gx#stx-pair? _tl183525_)
                                   (let ((_e184528_ (gx#syntax-e _tl183525_)))
                                     (let ((_hd185532_ (##car _e184528_))
                                           (_tl186535_ (##cdr _e184528_)))
                                       (if (gx#stx-pair? _tl186535_)
                                           (let ((_e187538_
                                                  (gx#syntax-e _tl186535_)))
                                             (let ((_hd188542_
                                                    (##car _e187538_))
                                                   (_tl189545_
                                                    (##cdr _e187538_)))
                                               ((lambda (_L548_
                                                         _L550_
                                                         _L551_
                                                         _L552_)
                                                  (if (gx#identifier? _L550_)
                                                      (cons _L552_
                                                            (cons _L551_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _L550_ '()) _L548_)))
              (_g173511_ _g176515_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl189545_
                                                _hd188542_
                                                _hd185532_
                                                _hd182522_)))
                                           (_g173511_ _g176515_))))
                                   (_g173511_ _g176515_))))
                           (_g173511_ _g176515_)))))
                (_g172569_ _$stx169_)))))))
    (define |gxc[:0:]#meta-state|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g5860_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g5861_|
                   (cons |gxc[1]#_g5862_|
                         (cons |gxc[1]#_g5863_|
                               (cons (cons |gxc[1]#_g5864_|
                                           (cons |gxc[1]#_g5865_|
                                                 (cons |gxc[1]#_g5866_|
                                                       (cons |gxc[1]#_g5867_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g5868_|
                                                 (cons |gxc[1]#_g5869_|
                                                       (cons |gxc[1]#_g5870_|
                                                             (cons |gxc[1]#_g5871_|
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
       |gxc[1]#_g5872_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g5873_|
                   (cons |gxc[1]#_g5874_|
                         (cons |gxc[1]#_g5875_|
                               (cons (cons |gxc[1]#_g5876_|
                                           (cons |gxc[1]#_g5877_|
                                                 (cons |gxc[1]#_g5878_|
                                                       (cons |gxc[1]#_g5879_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g5880_|
                                                 (cons |gxc[1]#_g5881_|
                                                       (cons |gxc[1]#_g5882_|
                                                             (cons |gxc[1]#_g5883_|
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
