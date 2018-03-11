(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gxc[1]#_g12392_|
    (gx#make-syntax-quote 'meta-state::t #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g12393_|
    (gx#make-syntax-quote 'meta-state::t #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g12394_|
    (gx#make-syntax-quote
     'make-meta-state
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12395_|
    (gx#make-syntax-quote 'meta-state? #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g12396_|
    (gx#make-syntax-quote
     'meta-state-src
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12397_|
    (gx#make-syntax-quote 'meta-state-n #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g12398_|
    (gx#make-syntax-quote
     'meta-state-open
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12399_|
    (gx#make-syntax-quote
     'meta-state-blocks
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12400_|
    (gx#make-syntax-quote
     'meta-state-src-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12401_|
    (gx#make-syntax-quote
     'meta-state-n-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12402_|
    (gx#make-syntax-quote
     'meta-state-open-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12403_|
    (gx#make-syntax-quote
     'meta-state-blocks-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12404_|
    (gx#make-syntax-quote
     'meta-state-block::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12405_|
    (gx#make-syntax-quote
     'meta-state-block::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12406_|
    (gx#make-syntax-quote
     'make-meta-state-block
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12407_|
    (gx#make-syntax-quote
     'meta-state-block?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12408_|
    (gx#make-syntax-quote
     'meta-state-block-ctx
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12409_|
    (gx#make-syntax-quote
     'meta-state-block-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12410_|
    (gx#make-syntax-quote
     'meta-state-block-n
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12411_|
    (gx#make-syntax-quote
     'meta-state-block-code
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12412_|
    (gx#make-syntax-quote
     'meta-state-block-ctx-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12413_|
    (gx#make-syntax-quote
     'meta-state-block-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12414_|
    (gx#make-syntax-quote
     'meta-state-block-n-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12415_|
    (gx#make-syntax-quote
     'meta-state-block-code-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#defcompile-method|
      (lambda (_$stx3397_)
        (let* ((_g34033482_
                (lambda (_g34043478_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g34043478_)))
               (_g34023556_
                (lambda (_g34043486_)
                  (if (gx#stx-pair? _g34043486_)
                      (let ((_e34653489_ (gx#syntax-e _g34043486_)))
                        (let ((_hd34663493_ (##car _e34653489_))
                              (_tl34673496_ (##cdr _e34653489_)))
                          (if (gx#stx-pair? _tl34673496_)
                              (let ((_e34683499_ (gx#syntax-e _tl34673496_)))
                                (let ((_hd34693503_ (##car _e34683499_))
                                      (_tl34703506_ (##cdr _e34683499_)))
                                  (if (gx#stx-pair? _tl34703506_)
                                      (let ((_e34713509_
                                             (gx#syntax-e _tl34703506_)))
                                        (let ((_hd34723513_
                                               (##car _e34713509_))
                                              (_tl34733516_
                                               (##cdr _e34713509_)))
                                          (if (gx#stx-pair? _hd34723513_)
                                              (let ((_e34743519_
                                                     (gx#syntax-e
                                                      _hd34723513_)))
                                                (let ((_hd34753523_
                                                       (##car _e34743519_))
                                                      (_tl34763526_
                                                       (##cdr _e34743519_)))
                                                  ((lambda (_L3529_
                                                            _L3531_
                                                            _L3532_
                                                            _L3533_
                                                            _L3534_)
                                                     (if (gx#identifier?
                                                          _L3533_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'begin)
                                                               (cons (cons _L3534_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons '#f
                                         (cons (cons _L3532_ _L3531_)
                                               _L3529_)))
                             (cons (cons (gx#datum->syntax '#f 'define)
                                         (cons (cons _L3533_
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
                                                 (cons _L3532_ '()))
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
                 (_g34033482_ _g34043486_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl34733516_
                                                   _tl34763526_
                                                   _hd34753523_
                                                   _hd34693503_
                                                   _hd34663493_)))
                                              (_g34033482_ _g34043486_))))
                                      (_g34033482_ _g34043486_))))
                              (_g34033482_ _g34043486_))))
                      (_g34033482_ _g34043486_))))
               (_g34013737_
                (lambda (_g34043560_)
                  (if (gx#stx-pair? _g34043560_)
                      (let ((_e34223563_ (gx#syntax-e _g34043560_)))
                        (let ((_hd34233567_ (##car _e34223563_))
                              (_tl34243570_ (##cdr _e34223563_)))
                          (if (gx#stx-pair? _tl34243570_)
                              (let ((_e34253573_ (gx#syntax-e _tl34243570_)))
                                (let ((_hd34263577_ (##car _e34253573_))
                                      (_tl34273580_ (##cdr _e34253573_)))
                                  (if (gx#stx-datum? _hd34263577_)
                                      (if (equal? (gx#stx-e _hd34263577_) '#f)
                                          (if (gx#stx-pair? _tl34273580_)
                                              (let ((_e34283583_
                                                     (gx#syntax-e
                                                      _tl34273580_)))
                                                (let ((_hd34293587_
                                                       (##car _e34283583_))
                                                      (_tl34303590_
                                                       (##cdr _e34283583_)))
                                                  (if (gx#stx-pair?
                                                       _hd34293587_)
                                                      (let ((_e34313593_
                                                             (gx#syntax-e
                                                              _hd34293587_)))
                                                        (let ((_hd34323597_
                                                               (##car _e34313593_))
                                                              (_tl34333600_
                                                               (##cdr _e34313593_)))
                                                          (if (gx#stx-pair/null?
                                                               _tl34333600_)
                                                              (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _tl34333600_)
                                '0)
                          (let ((_g12388_
                                 (gx#syntax-split-splice _tl34333600_ '0)))
                            (begin
                              (let ((_g12389_ (values-count _g12388_)))
                                (if (not (fx= _g12389_ 2))
                                    (error "Context expects 2 values"
                                           _g12389_)))
                              (let ((_target34343603_ (values-ref _g12388_ 0))
                                    (_tl34363606_ (values-ref _g12388_ 1)))
                                (if (gx#stx-null? _tl34363606_)
                                    (letrec ((_loop34373609_
                                              (lambda (_hd34353613_
                                                       _super34413616_)
                                                (if (gx#stx-pair? _hd34353613_)
                                                    (let ((_e34383619_
                                                           (gx#syntax-e
                                                            _hd34353613_)))
                                                      (let ((_lp-hd34393623_
                                                             (##car _e34383619_))
                                                            (_lp-tl34403626_
                                                             (##cdr _e34383619_)))
                                                        (_loop34373609_
                                                         _lp-tl34403626_
                                                         (cons _lp-hd34393623_
                                                               _super34413616_))))
                                                    (let ((_super34423629_
                                                           (reverse _super34413616_)))
                                                      (if (gx#stx-pair/null?
                                                           _tl34303590_)
                                                          (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tl34303590_)
                            '0)
                      (let ((_g12390_
                             (gx#syntax-split-splice _tl34303590_ '0)))
                        (begin
                          (let ((_g12391_ (values-count _g12390_)))
                            (if (not (fx= _g12391_ 2))
                                (error "Context expects 2 values" _g12391_)))
                          (let ((_target34433633_ (values-ref _g12390_ 0))
                                (_tl34453636_ (values-ref _g12390_ 1)))
                            (if (gx#stx-null? _tl34453636_)
                                (letrec ((_loop34463639_
                                          (lambda (_hd34443643_
                                                   _method34503646_
                                                   _symbol34513648_)
                                            (if (gx#stx-pair? _hd34443643_)
                                                (let ((_e34473651_
                                                       (gx#syntax-e
                                                        _hd34443643_)))
                                                  (let ((_lp-hd34483655_
                                                         (##car _e34473651_))
                                                        (_lp-tl34493658_
                                                         (##cdr _e34473651_)))
                                                    (if (gx#stx-pair?
                                                         _lp-hd34483655_)
                                                        (let ((_e34543661_
                                                               (gx#syntax-e
                                                                _lp-hd34483655_)))
                                                          (let ((_hd34553665_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e34543661_))
                        (_tl34563668_ (##cdr _e34543661_)))
                    (if (gx#stx-pair? _tl34563668_)
                        (let ((_e34573671_ (gx#syntax-e _tl34563668_)))
                          (let ((_hd34583675_ (##car _e34573671_))
                                (_tl34593678_ (##cdr _e34573671_)))
                            (if (gx#stx-null? _tl34593678_)
                                (_loop34463639_
                                 _lp-tl34493658_
                                 (cons _hd34583675_ _method34503646_)
                                 (cons _hd34553665_ _symbol34513648_))
                                (_g34023556_ _g34043560_))))
                        (_g34023556_ _g34043560_))))
                (_g34023556_ _g34043560_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_method34523681_
                                                       (reverse _method34503646_))
                                                      (_symbol34533684_
                                                       (reverse _symbol34513648_)))
                                                  ((lambda (_L3687_
                                                            _L3689_
                                                            _L3690_
                                                            _L3691_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'define)
                                                           (cons _L3691_
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
                 (foldr (lambda (_g37173723_ _g37183726_)
                          (cons (cons (gx#datum->syntax '#f 'hash-copy!)
                                      (cons (gx#datum->syntax '#f 'tbl)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'force)
                                                        (cons _g37173723_ '()))
                                                  '())))
                                _g37183726_))
                        (begin
                          (gx#syntax-check-splice-targets _L3687_ _L3689_)
                          (foldr (lambda (_g37193729_ _g37203732_ _g37213734_)
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
                         (cons _g37203732_ '()))
                   (cons _g37193729_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _g37213734_))
                                 (cons (gx#datum->syntax '#f 'tbl) '())
                                 _L3687_
                                 _L3689_))
                        _L3690_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _method34523681_
                                                   _symbol34533684_
                                                   _super34423629_
                                                   _hd34323597_))))))
                                  (_loop34463639_ _target34433633_ '() '()))
                                (_g34023556_ _g34043560_)))))
                      (_g34023556_ _g34043560_))
                  (_g34023556_ _g34043560_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop34373609_ _target34343603_ '()))
                                    (_g34023556_ _g34043560_)))))
                          (_g34023556_ _g34043560_))
                      (_g34023556_ _g34043560_))))
              (_g34023556_ _g34043560_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g34023556_ _g34043560_))
                                          (_g34023556_ _g34043560_))
                                      (_g34023556_ _g34043560_))))
                              (_g34023556_ _g34043560_))))
                      (_g34023556_ _g34043560_))))
               (_g34003795_
                (lambda (_g34043741_)
                  (if (gx#stx-pair? _g34043741_)
                      (let ((_e34093744_ (gx#syntax-e _g34043741_)))
                        (let ((_hd34103748_ (##car _e34093744_))
                              (_tl34113751_ (##cdr _e34093744_)))
                          (if (gx#stx-pair? _tl34113751_)
                              (let ((_e34123754_ (gx#syntax-e _tl34113751_)))
                                (let ((_hd34133758_ (##car _e34123754_))
                                      (_tl34143761_ (##cdr _e34123754_)))
                                  (if (gx#stx-pair? _tl34143761_)
                                      (let ((_e34153764_
                                             (gx#syntax-e _tl34143761_)))
                                        (let ((_hd34163768_
                                               (##car _e34153764_))
                                              (_tl34173771_
                                               (##cdr _e34153764_)))
                                          ((lambda (_L3774_
                                                    _L3776_
                                                    _L3777_
                                                    _L3778_)
                                             (if (gx#identifier? _L3776_)
                                                 (cons _L3778_
                                                       (cons _L3777_
                                                             (cons (cons _L3776_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           _L3774_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g34013737_ _g34043741_)))
                                           _tl34173771_
                                           _hd34163768_
                                           _hd34133758_
                                           _hd34103748_)))
                                      (_g34013737_ _g34043741_))))
                              (_g34013737_ _g34043741_))))
                      (_g34013737_ _g34043741_)))))
          (_g34003795_ _$stx3397_))))
    (define |gxc[:0:]#meta-state|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g12392_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g12393_|
                   (cons |gxc[1]#_g12394_|
                         (cons |gxc[1]#_g12395_|
                               (cons (cons |gxc[1]#_g12396_|
                                           (cons |gxc[1]#_g12397_|
                                                 (cons |gxc[1]#_g12398_|
                                                       (cons |gxc[1]#_g12399_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g12400_|
                                                 (cons |gxc[1]#_g12401_|
                                                       (cons |gxc[1]#_g12402_|
                                                             (cons |gxc[1]#_g12403_|
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
       |gxc[1]#_g12404_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g12405_|
                   (cons |gxc[1]#_g12406_|
                         (cons |gxc[1]#_g12407_|
                               (cons (cons |gxc[1]#_g12408_|
                                           (cons |gxc[1]#_g12409_|
                                                 (cons |gxc[1]#_g12410_|
                                                       (cons |gxc[1]#_g12411_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g12412_|
                                                 (cons |gxc[1]#_g12413_|
                                                       (cons |gxc[1]#_g12414_|
                                                             (cons |gxc[1]#_g12415_|
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
