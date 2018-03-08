(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gxc[1]#_g12374_|
    (gx#make-syntax-quote 'meta-state::t #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g12375_|
    (gx#make-syntax-quote 'meta-state::t #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g12376_|
    (gx#make-syntax-quote
     'make-meta-state
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12377_|
    (gx#make-syntax-quote 'meta-state? #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g12378_|
    (gx#make-syntax-quote
     'meta-state-src
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12379_|
    (gx#make-syntax-quote 'meta-state-n #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g12380_|
    (gx#make-syntax-quote
     'meta-state-open
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12381_|
    (gx#make-syntax-quote
     'meta-state-blocks
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12382_|
    (gx#make-syntax-quote
     'meta-state-src-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12383_|
    (gx#make-syntax-quote
     'meta-state-n-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12384_|
    (gx#make-syntax-quote
     'meta-state-open-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12385_|
    (gx#make-syntax-quote
     'meta-state-blocks-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12386_|
    (gx#make-syntax-quote
     'meta-state-block::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12387_|
    (gx#make-syntax-quote
     'meta-state-block::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12388_|
    (gx#make-syntax-quote
     'make-meta-state-block
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12389_|
    (gx#make-syntax-quote
     'meta-state-block?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12390_|
    (gx#make-syntax-quote
     'meta-state-block-ctx
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12391_|
    (gx#make-syntax-quote
     'meta-state-block-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12392_|
    (gx#make-syntax-quote
     'meta-state-block-n
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12393_|
    (gx#make-syntax-quote
     'meta-state-block-code
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12394_|
    (gx#make-syntax-quote
     'meta-state-block-ctx-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12395_|
    (gx#make-syntax-quote
     'meta-state-block-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12396_|
    (gx#make-syntax-quote
     'meta-state-block-n-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12397_|
    (gx#make-syntax-quote
     'meta-state-block-code-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#defcompile-method|
      (lambda (_$stx3379_)
        (let* ((_g33853464_
                (lambda (_g33863460_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g33863460_)))
               (_g33843538_
                (lambda (_g33863468_)
                  (if (gx#stx-pair? _g33863468_)
                      (let ((_e34473471_ (gx#syntax-e _g33863468_)))
                        (let ((_hd34483475_ (##car _e34473471_))
                              (_tl34493478_ (##cdr _e34473471_)))
                          (if (gx#stx-pair? _tl34493478_)
                              (let ((_e34503481_ (gx#syntax-e _tl34493478_)))
                                (let ((_hd34513485_ (##car _e34503481_))
                                      (_tl34523488_ (##cdr _e34503481_)))
                                  (if (gx#stx-pair? _tl34523488_)
                                      (let ((_e34533491_
                                             (gx#syntax-e _tl34523488_)))
                                        (let ((_hd34543495_
                                               (##car _e34533491_))
                                              (_tl34553498_
                                               (##cdr _e34533491_)))
                                          (if (gx#stx-pair? _hd34543495_)
                                              (let ((_e34563501_
                                                     (gx#syntax-e
                                                      _hd34543495_)))
                                                (let ((_hd34573505_
                                                       (##car _e34563501_))
                                                      (_tl34583508_
                                                       (##cdr _e34563501_)))
                                                  ((lambda (_L3511_
                                                            _L3513_
                                                            _L3514_
                                                            _L3515_
                                                            _L3516_)
                                                     (if (gx#identifier?
                                                          _L3515_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'begin)
                                                               (cons (cons _L3516_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons '#f
                                         (cons (cons _L3514_ _L3513_)
                                               _L3511_)))
                             (cons (cons (gx#datum->syntax '#f 'define)
                                         (cons (cons _L3515_
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
                                                 (cons _L3514_ '()))
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
                 (_g33853464_ _g33863468_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl34553498_
                                                   _tl34583508_
                                                   _hd34573505_
                                                   _hd34513485_
                                                   _hd34483475_)))
                                              (_g33853464_ _g33863468_))))
                                      (_g33853464_ _g33863468_))))
                              (_g33853464_ _g33863468_))))
                      (_g33853464_ _g33863468_))))
               (_g33833719_
                (lambda (_g33863542_)
                  (if (gx#stx-pair? _g33863542_)
                      (let ((_e34043545_ (gx#syntax-e _g33863542_)))
                        (let ((_hd34053549_ (##car _e34043545_))
                              (_tl34063552_ (##cdr _e34043545_)))
                          (if (gx#stx-pair? _tl34063552_)
                              (let ((_e34073555_ (gx#syntax-e _tl34063552_)))
                                (let ((_hd34083559_ (##car _e34073555_))
                                      (_tl34093562_ (##cdr _e34073555_)))
                                  (if (gx#stx-datum? _hd34083559_)
                                      (if (equal? (gx#stx-e _hd34083559_) '#f)
                                          (if (gx#stx-pair? _tl34093562_)
                                              (let ((_e34103565_
                                                     (gx#syntax-e
                                                      _tl34093562_)))
                                                (let ((_hd34113569_
                                                       (##car _e34103565_))
                                                      (_tl34123572_
                                                       (##cdr _e34103565_)))
                                                  (if (gx#stx-pair?
                                                       _hd34113569_)
                                                      (let ((_e34133575_
                                                             (gx#syntax-e
                                                              _hd34113569_)))
                                                        (let ((_hd34143579_
                                                               (##car _e34133575_))
                                                              (_tl34153582_
                                                               (##cdr _e34133575_)))
                                                          (if (gx#stx-pair/null?
                                                               _tl34153582_)
                                                              (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _tl34153582_)
                                '0)
                          (let ((_g12370_
                                 (gx#syntax-split-splice _tl34153582_ '0)))
                            (begin
                              (let ((_g12371_ (values-count _g12370_)))
                                (if (not (fx= _g12371_ 2))
                                    (error "Context expects 2 values"
                                           _g12371_)))
                              (let ((_target34163585_ (values-ref _g12370_ 0))
                                    (_tl34183588_ (values-ref _g12370_ 1)))
                                (if (gx#stx-null? _tl34183588_)
                                    (letrec ((_loop34193591_
                                              (lambda (_hd34173595_
                                                       _super34233598_)
                                                (if (gx#stx-pair? _hd34173595_)
                                                    (let ((_e34203601_
                                                           (gx#syntax-e
                                                            _hd34173595_)))
                                                      (let ((_lp-hd34213605_
                                                             (##car _e34203601_))
                                                            (_lp-tl34223608_
                                                             (##cdr _e34203601_)))
                                                        (_loop34193591_
                                                         _lp-tl34223608_
                                                         (cons _lp-hd34213605_
                                                               _super34233598_))))
                                                    (let ((_super34243611_
                                                           (reverse _super34233598_)))
                                                      (if (gx#stx-pair/null?
                                                           _tl34123572_)
                                                          (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tl34123572_)
                            '0)
                      (let ((_g12372_
                             (gx#syntax-split-splice _tl34123572_ '0)))
                        (begin
                          (let ((_g12373_ (values-count _g12372_)))
                            (if (not (fx= _g12373_ 2))
                                (error "Context expects 2 values" _g12373_)))
                          (let ((_target34253615_ (values-ref _g12372_ 0))
                                (_tl34273618_ (values-ref _g12372_ 1)))
                            (if (gx#stx-null? _tl34273618_)
                                (letrec ((_loop34283621_
                                          (lambda (_hd34263625_
                                                   _method34323628_
                                                   _symbol34333630_)
                                            (if (gx#stx-pair? _hd34263625_)
                                                (let ((_e34293633_
                                                       (gx#syntax-e
                                                        _hd34263625_)))
                                                  (let ((_lp-hd34303637_
                                                         (##car _e34293633_))
                                                        (_lp-tl34313640_
                                                         (##cdr _e34293633_)))
                                                    (if (gx#stx-pair?
                                                         _lp-hd34303637_)
                                                        (let ((_e34363643_
                                                               (gx#syntax-e
                                                                _lp-hd34303637_)))
                                                          (let ((_hd34373647_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e34363643_))
                        (_tl34383650_ (##cdr _e34363643_)))
                    (if (gx#stx-pair? _tl34383650_)
                        (let ((_e34393653_ (gx#syntax-e _tl34383650_)))
                          (let ((_hd34403657_ (##car _e34393653_))
                                (_tl34413660_ (##cdr _e34393653_)))
                            (if (gx#stx-null? _tl34413660_)
                                (_loop34283621_
                                 _lp-tl34313640_
                                 (cons _hd34403657_ _method34323628_)
                                 (cons _hd34373647_ _symbol34333630_))
                                (_g33843538_ _g33863542_))))
                        (_g33843538_ _g33863542_))))
                (_g33843538_ _g33863542_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_method34343663_
                                                       (reverse _method34323628_))
                                                      (_symbol34353666_
                                                       (reverse _symbol34333630_)))
                                                  ((lambda (_L3669_
                                                            _L3671_
                                                            _L3672_
                                                            _L3673_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'define)
                                                           (cons _L3673_
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
                 (foldr (lambda (_g36993705_ _g37003708_)
                          (cons (cons (gx#datum->syntax '#f 'hash-copy!)
                                      (cons (gx#datum->syntax '#f 'tbl)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'force)
                                                        (cons _g36993705_ '()))
                                                  '())))
                                _g37003708_))
                        (begin
                          (gx#syntax-check-splice-targets _L3669_ _L3671_)
                          (foldr (lambda (_g37013711_ _g37023714_ _g37033716_)
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
                         (cons _g37023714_ '()))
                   (cons _g37013711_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _g37033716_))
                                 (cons (gx#datum->syntax '#f 'tbl) '())
                                 _L3669_
                                 _L3671_))
                        _L3672_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _method34343663_
                                                   _symbol34353666_
                                                   _super34243611_
                                                   _hd34143579_))))))
                                  (_loop34283621_ _target34253615_ '() '()))
                                (_g33843538_ _g33863542_)))))
                      (_g33843538_ _g33863542_))
                  (_g33843538_ _g33863542_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop34193591_ _target34163585_ '()))
                                    (_g33843538_ _g33863542_)))))
                          (_g33843538_ _g33863542_))
                      (_g33843538_ _g33863542_))))
              (_g33843538_ _g33863542_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g33843538_ _g33863542_))
                                          (_g33843538_ _g33863542_))
                                      (_g33843538_ _g33863542_))))
                              (_g33843538_ _g33863542_))))
                      (_g33843538_ _g33863542_))))
               (_g33823777_
                (lambda (_g33863723_)
                  (if (gx#stx-pair? _g33863723_)
                      (let ((_e33913726_ (gx#syntax-e _g33863723_)))
                        (let ((_hd33923730_ (##car _e33913726_))
                              (_tl33933733_ (##cdr _e33913726_)))
                          (if (gx#stx-pair? _tl33933733_)
                              (let ((_e33943736_ (gx#syntax-e _tl33933733_)))
                                (let ((_hd33953740_ (##car _e33943736_))
                                      (_tl33963743_ (##cdr _e33943736_)))
                                  (if (gx#stx-pair? _tl33963743_)
                                      (let ((_e33973746_
                                             (gx#syntax-e _tl33963743_)))
                                        (let ((_hd33983750_
                                               (##car _e33973746_))
                                              (_tl33993753_
                                               (##cdr _e33973746_)))
                                          ((lambda (_L3756_
                                                    _L3758_
                                                    _L3759_
                                                    _L3760_)
                                             (if (gx#identifier? _L3758_)
                                                 (cons _L3760_
                                                       (cons _L3759_
                                                             (cons (cons _L3758_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           _L3756_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g33833719_ _g33863723_)))
                                           _tl33993753_
                                           _hd33983750_
                                           _hd33953740_
                                           _hd33923730_)))
                                      (_g33833719_ _g33863723_))))
                              (_g33833719_ _g33863723_))))
                      (_g33833719_ _g33863723_)))))
          (_g33823777_ _$stx3379_))))
    (define |gxc[:0:]#meta-state|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g12374_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g12375_|
                   (cons |gxc[1]#_g12376_|
                         (cons |gxc[1]#_g12377_|
                               (cons (cons |gxc[1]#_g12378_|
                                           (cons |gxc[1]#_g12379_|
                                                 (cons |gxc[1]#_g12380_|
                                                       (cons |gxc[1]#_g12381_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g12382_|
                                                 (cons |gxc[1]#_g12383_|
                                                       (cons |gxc[1]#_g12384_|
                                                             (cons |gxc[1]#_g12385_|
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
       |gxc[1]#_g12386_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g12387_|
                   (cons |gxc[1]#_g12388_|
                         (cons |gxc[1]#_g12389_|
                               (cons (cons |gxc[1]#_g12390_|
                                           (cons |gxc[1]#_g12391_|
                                                 (cons |gxc[1]#_g12392_|
                                                       (cons |gxc[1]#_g12393_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g12394_|
                                                 (cons |gxc[1]#_g12395_|
                                                       (cons |gxc[1]#_g12396_|
                                                             (cons |gxc[1]#_g12397_|
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
