(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g14288_|
    (gx#make-syntax-quote 'meta-state::t #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g14289_|
    (gx#make-syntax-quote
     'make-meta-state
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14290_|
    (gx#make-syntax-quote 'meta-state? #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g14291_|
    (gx#make-syntax-quote
     'meta-state-src
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14292_|
    (gx#make-syntax-quote 'meta-state-n #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g14293_|
    (gx#make-syntax-quote
     'meta-state-open
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14294_|
    (gx#make-syntax-quote
     'meta-state-blocks
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14295_|
    (gx#make-syntax-quote
     'meta-state-src-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14296_|
    (gx#make-syntax-quote
     'meta-state-n-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14297_|
    (gx#make-syntax-quote
     'meta-state-open-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14298_|
    (gx#make-syntax-quote
     'meta-state-blocks-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14299_|
    (gx#make-syntax-quote
     'meta-state-block::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14300_|
    (gx#make-syntax-quote
     'make-meta-state-block
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14301_|
    (gx#make-syntax-quote
     'meta-state-block?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14302_|
    (gx#make-syntax-quote
     'meta-state-block-ctx
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14303_|
    (gx#make-syntax-quote
     'meta-state-block-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14304_|
    (gx#make-syntax-quote
     'meta-state-block-n
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14305_|
    (gx#make-syntax-quote
     'meta-state-block-code
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14306_|
    (gx#make-syntax-quote
     'meta-state-block-ctx-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14307_|
    (gx#make-syntax-quote
     'meta-state-block-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14308_|
    (gx#make-syntax-quote
     'meta-state-block-n-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14309_|
    (gx#make-syntax-quote
     'meta-state-block-code-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#defcompile-method|
      (lambda (_$stx3441_)
        (let* ((___stx1309513096_ _$stx3441_)
               (_g34473527_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx1309513096_))))
          (let ((___kont1309813099_
                 (lambda (_L3824_ _L3826_ _L3827_ _L3828_)
                   (cons _L3828_
                         (cons _L3827_ (cons (cons _L3826_ '()) _L3824_)))))
                (___kont1310013101_
                 (lambda (_L3736_ _L3738_ _L3739_ _L3740_)
                   (cons (gx#datum->syntax__0 '#f 'define)
                         (cons _L3740_
                               (cons (cons (gx#datum->syntax__0 '#f 'delay)
                                           (cons (cons (gx#datum->syntax__0
                                                        '#f
                                                        'let)
                                                       (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'tbl)
                           (cons (cons (gx#datum->syntax__0
                                        '#f
                                        'make-hash-table-eq)
                                       '())
                                 '()))
                     (begin
                       '#!void
                       (foldr1 (lambda (_g37673773_ _g37683776_)
                                 (cons (cons (gx#datum->syntax__0
                                              '#f
                                              'hash-copy!)
                                             (cons (gx#datum->syntax__0
                                                    '#f
                                                    'tbl)
                                                   (cons (cons (gx#datum->syntax__0
                                                                '#f
                                                                'force)
                                                               (cons _g37673773_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _g37683776_))
                               (begin
                                 (gx#syntax-check-splice-targets
                                  _L3736_
                                  _L3738_)
                                 (foldr2 (lambda (_g37693779_
                                                  _g37703782_
                                                  _g37713784_)
                                           (cons (cons (gx#datum->syntax__0
                                                        '#f
                                                        'hash-put!)
                                                       (cons (gx#datum->syntax__0
                                                              '#f
                                                              'tbl)
                                                             (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _g37703782_ '()))
                           (cons _g37693779_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _g37713784_))
                                         (cons (gx#datum->syntax__0 '#f 'tbl)
                                               '())
                                         _L3736_
                                         _L3738_))
                               _L3739_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())))))
                (___kont1310613107_
                 (lambda (_L3574_ _L3576_ _L3577_ _L3578_ _L3579_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (cons (cons _L3579_
                                     (cons '#f
                                           (cons (cons _L3577_ _L3576_)
                                                 _L3574_)))
                               (cons (cons (gx#datum->syntax__0 '#f 'define)
                                           (cons (cons _L3578_
                                                       (cons (gx#datum->syntax__0
                                                              '#f
                                                              'stx)
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'args)))
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              'parameterize)
                                                             (cons (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        '#f
                                        'current-compile-methods)
                                       (cons (cons (gx#datum->syntax__0
                                                    '#f
                                                    'force)
                                                   (cons _L3577_ '()))
                                             '()))
                                 '())
                           (cons (cons (gx#datum->syntax__0 '#f 'apply)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'compile-e)
                                             (cons (gx#datum->syntax__0
                                                    '#f
                                                    'stx)
                                                   (cons (gx#datum->syntax__0
                                                          '#f
                                                          'args)
                                                         '()))))
                                 '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((___match1318813189_
                    (lambda (_e35103534_
                             _hd35113538_
                             _tl35123541_
                             _e35133544_
                             _hd35143548_
                             _tl35153551_
                             _e35163554_
                             _hd35173558_
                             _tl35183561_
                             _e35193564_
                             _hd35203568_
                             _tl35213571_)
                      (let ((_L3574_ _tl35183561_)
                            (_L3576_ _tl35213571_)
                            (_L3577_ _hd35203568_)
                            (_L3578_ _hd35143548_)
                            (_L3579_ _hd35113538_))
                        (if (gx#identifier? _L3578_)
                            (___kont1310613107_
                             _L3574_
                             _L3576_
                             _L3577_
                             _L3578_
                             _L3579_)
                            (_g34473527_)))))
                   (___match1316413165_
                    (lambda (_e34663608_
                             _hd34673612_
                             _tl34683615_
                             _e34693618_
                             _hd34703622_
                             _tl34713625_
                             _e34723628_
                             _e34733632_
                             _hd34743636_
                             _tl34753639_
                             _e34763642_
                             _hd34773646_
                             _tl34783649_
                             ___splice1310213103_
                             _target34793652_
                             _tl34813655_)
                      (letrec ((_loop34823658_
                                (lambda (_hd34803662_ _super34863665_)
                                  (if (gx#stx-pair? _hd34803662_)
                                      (let ((_e34833668_
                                             (gx#syntax-e _hd34803662_)))
                                        (let ((_lp-tl34853675_
                                               (##cdr _e34833668_))
                                              (_lp-hd34843672_
                                               (##car _e34833668_)))
                                          (_loop34823658_
                                           _lp-tl34853675_
                                           (cons _lp-hd34843672_
                                                 _super34863665_))))
                                      (let ((_super34873678_
                                             (reverse _super34863665_)))
                                        (if (gx#stx-pair/null? _tl34753639_)
                                            (let ((___splice1310413105_
                                                   (gx#syntax-split-splice
                                                    _tl34753639_
                                                    '0)))
                                              (let ((_tl34903685_
                                                     (##vector-ref
                                                      ___splice1310413105_
                                                      '1))
                                                    (_target34883682_
                                                     (##vector-ref
                                                      ___splice1310413105_
                                                      '0)))
                                                (if (gx#stx-null? _tl34903685_)
                                                    (letrec ((_loop34913688_
                                                              (lambda (_hd34893692_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _method34953695_
                               _symbol34963697_)
                        (if (gx#stx-pair? _hd34893692_)
                            (let ((_e34923700_ (gx#syntax-e _hd34893692_)))
                              (let ((_lp-tl34943707_ (##cdr _e34923700_))
                                    (_lp-hd34933704_ (##car _e34923700_)))
                                (if (gx#stx-pair? _lp-hd34933704_)
                                    (let ((_e34993710_
                                           (gx#syntax-e _lp-hd34933704_)))
                                      (let ((_tl35013717_ (##cdr _e34993710_))
                                            (_hd35003714_ (##car _e34993710_)))
                                        (if (gx#stx-pair? _tl35013717_)
                                            (let ((_e35023720_
                                                   (gx#syntax-e _tl35013717_)))
                                              (let ((_tl35043727_
                                                     (##cdr _e35023720_))
                                                    (_hd35033724_
                                                     (##car _e35023720_)))
                                                (if (gx#stx-null? _tl35043727_)
                                                    (_loop34913688_
                                                     _lp-tl34943707_
                                                     (cons _hd35033724_
                                                           _method34953695_)
                                                     (cons _hd35003714_
                                                           _symbol34963697_))
                                                    (___match1318813189_
                                                     _e34663608_
                                                     _hd34673612_
                                                     _tl34683615_
                                                     _e34693618_
                                                     _hd34703622_
                                                     _tl34713625_
                                                     _e34733632_
                                                     _hd34743636_
                                                     _tl34753639_
                                                     _e34763642_
                                                     _hd34773646_
                                                     _tl34783649_))))
                                            (___match1318813189_
                                             _e34663608_
                                             _hd34673612_
                                             _tl34683615_
                                             _e34693618_
                                             _hd34703622_
                                             _tl34713625_
                                             _e34733632_
                                             _hd34743636_
                                             _tl34753639_
                                             _e34763642_
                                             _hd34773646_
                                             _tl34783649_))))
                                    (___match1318813189_
                                     _e34663608_
                                     _hd34673612_
                                     _tl34683615_
                                     _e34693618_
                                     _hd34703622_
                                     _tl34713625_
                                     _e34733632_
                                     _hd34743636_
                                     _tl34753639_
                                     _e34763642_
                                     _hd34773646_
                                     _tl34783649_))))
                            (let ((_symbol34983733_ (reverse _symbol34963697_))
                                  (_method34973730_
                                   (reverse _method34953695_)))
                              (___kont1310013101_
                               _method34973730_
                               _symbol34983733_
                               _super34873678_
                               _hd34773646_))))))
              (_loop34913688_ _target34883682_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match1318813189_
                                                     _e34663608_
                                                     _hd34673612_
                                                     _tl34683615_
                                                     _e34693618_
                                                     _hd34703622_
                                                     _tl34713625_
                                                     _e34733632_
                                                     _hd34743636_
                                                     _tl34753639_
                                                     _e34763642_
                                                     _hd34773646_
                                                     _tl34783649_))))
                                            (___match1318813189_
                                             _e34663608_
                                             _hd34673612_
                                             _tl34683615_
                                             _e34693618_
                                             _hd34703622_
                                             _tl34713625_
                                             _e34733632_
                                             _hd34743636_
                                             _tl34753639_
                                             _e34763642_
                                             _hd34773646_
                                             _tl34783649_)))))))
                        (_loop34823658_ _target34793652_ '()))))
                   (___match1312613127_
                    (lambda (_e34533794_
                             _hd34543798_
                             _tl34553801_
                             _e34563804_
                             _hd34573808_
                             _tl34583811_
                             _e34593814_
                             _hd34603818_
                             _tl34613821_)
                      (let ((_L3824_ _tl34613821_)
                            (_L3826_ _hd34603818_)
                            (_L3827_ _hd34573808_)
                            (_L3828_ _hd34543798_))
                        (if (gx#identifier? _L3826_)
                            (___kont1309813099_
                             _L3824_
                             _L3826_
                             _L3827_
                             _L3828_)
                            (if (gx#stx-datum? _hd34573808_)
                                (let ((_e34723628_ (gx#stx-e _hd34573808_)))
                                  (if (equal? _e34723628_ '#f)
                                      (if (gx#stx-pair? _hd34603818_)
                                          (let ((_e34763642_
                                                 (gx#syntax-e _hd34603818_)))
                                            (let ((_tl34783649_
                                                   (##cdr _e34763642_))
                                                  (_hd34773646_
                                                   (##car _e34763642_)))
                                              (if (gx#stx-pair/null?
                                                   _tl34783649_)
                                                  (let ((___splice1310213103_
                                                         (gx#syntax-split-splice
                                                          _tl34783649_
                                                          '0)))
                                                    (let ((_tl34813655_
                                                           (##vector-ref
                                                            ___splice1310213103_
                                                            '1))
                                                          (_target34793652_
                                                           (##vector-ref
                                                            ___splice1310213103_
                                                            '0)))
                                                      (if (gx#stx-null?
                                                           _tl34813655_)
                                                          (___match1316413165_
                                                           _e34533794_
                                                           _hd34543798_
                                                           _tl34553801_
                                                           _e34563804_
                                                           _hd34573808_
                                                           _tl34583811_
                                                           _e34723628_
                                                           _e34593814_
                                                           _hd34603818_
                                                           _tl34613821_
                                                           _e34763642_
                                                           _hd34773646_
                                                           _tl34783649_
                                                           ___splice1310213103_
                                                           _target34793652_
                                                           _tl34813655_)
                                                          (___match1318813189_
                                                           _e34533794_
                                                           _hd34543798_
                                                           _tl34553801_
                                                           _e34563804_
                                                           _hd34573808_
                                                           _tl34583811_
                                                           _e34593814_
                                                           _hd34603818_
                                                           _tl34613821_
                                                           _e34763642_
                                                           _hd34773646_
                                                           _tl34783649_))))
                                                  (___match1318813189_
                                                   _e34533794_
                                                   _hd34543798_
                                                   _tl34553801_
                                                   _e34563804_
                                                   _hd34573808_
                                                   _tl34583811_
                                                   _e34593814_
                                                   _hd34603818_
                                                   _tl34613821_
                                                   _e34763642_
                                                   _hd34773646_
                                                   _tl34783649_))))
                                          (_g34473527_))
                                      (if (gx#stx-pair? _hd34603818_)
                                          (let ((_e35193564_
                                                 (gx#syntax-e _hd34603818_)))
                                            (let ((_tl35213571_
                                                   (##cdr _e35193564_))
                                                  (_hd35203568_
                                                   (##car _e35193564_)))
                                              (___match1318813189_
                                               _e34533794_
                                               _hd34543798_
                                               _tl34553801_
                                               _e34563804_
                                               _hd34573808_
                                               _tl34583811_
                                               _e34593814_
                                               _hd34603818_
                                               _tl34613821_
                                               _e35193564_
                                               _hd35203568_
                                               _tl35213571_)))
                                          (_g34473527_))))
                                (if (gx#stx-pair? _hd34603818_)
                                    (let ((_e35193564_
                                           (gx#syntax-e _hd34603818_)))
                                      (let ((_tl35213571_ (##cdr _e35193564_))
                                            (_hd35203568_ (##car _e35193564_)))
                                        (___match1318813189_
                                         _e34533794_
                                         _hd34543798_
                                         _tl34553801_
                                         _e34563804_
                                         _hd34573808_
                                         _tl34583811_
                                         _e34593814_
                                         _hd34603818_
                                         _tl34613821_
                                         _e35193564_
                                         _hd35203568_
                                         _tl35213571_)))
                                    (_g34473527_))))))))
              (if (gx#stx-pair? ___stx1309513096_)
                  (let ((_e34533794_ (gx#syntax-e ___stx1309513096_)))
                    (let ((_tl34553801_ (##cdr _e34533794_))
                          (_hd34543798_ (##car _e34533794_)))
                      (if (gx#stx-pair? _tl34553801_)
                          (let ((_e34563804_ (gx#syntax-e _tl34553801_)))
                            (let ((_tl34583811_ (##cdr _e34563804_))
                                  (_hd34573808_ (##car _e34563804_)))
                              (if (gx#stx-pair? _tl34583811_)
                                  (let ((_e34593814_
                                         (gx#syntax-e _tl34583811_)))
                                    (let ((_tl34613821_ (##cdr _e34593814_))
                                          (_hd34603818_ (##car _e34593814_)))
                                      (___match1312613127_
                                       _e34533794_
                                       _hd34543798_
                                       _tl34553801_
                                       _e34563804_
                                       _hd34573808_
                                       _tl34583811_
                                       _e34593814_
                                       _hd34603818_
                                       _tl34613821_)))
                                  (if (gx#stx-datum? _hd34573808_)
                                      (let ((_e34723628_
                                             (gx#stx-e _hd34573808_)))
                                        (_g34473527_))
                                      (_g34473527_)))))
                          (_g34473527_))))
                  (_g34473527_)))))))
    (define |gxc[:0:]#meta-state|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g14288_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g14288_|
                   (cons |gxc[1]#_g14289_|
                         (cons |gxc[1]#_g14290_|
                               (cons (cons |gxc[1]#_g14291_|
                                           (cons |gxc[1]#_g14292_|
                                                 (cons |gxc[1]#_g14293_|
                                                       (cons |gxc[1]#_g14294_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g14295_|
                                                 (cons |gxc[1]#_g14296_|
                                                       (cons |gxc[1]#_g14297_|
                                                             (cons |gxc[1]#_g14298_|
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
       |gxc[1]#_g14299_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g14299_|
                   (cons |gxc[1]#_g14300_|
                         (cons |gxc[1]#_g14301_|
                               (cons (cons |gxc[1]#_g14302_|
                                           (cons |gxc[1]#_g14303_|
                                                 (cons |gxc[1]#_g14304_|
                                                       (cons |gxc[1]#_g14305_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g14306_|
                                                 (cons |gxc[1]#_g14307_|
                                                       (cons |gxc[1]#_g14308_|
                                                             (cons |gxc[1]#_g14309_|
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
