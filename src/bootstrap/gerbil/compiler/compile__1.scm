(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gxc[1]#_g10499_| (gx#core-quote-syntax 'meta-state::t))
  (define |gxc[1]#_g10500_| (gx#core-quote-syntax 'meta-state::t))
  (define |gxc[1]#_g10501_| (gx#core-quote-syntax 'make-meta-state))
  (define |gxc[1]#_g10502_| (gx#core-quote-syntax 'meta-state?))
  (define |gxc[1]#_g10503_| (gx#core-quote-syntax 'meta-state-src))
  (define |gxc[1]#_g10504_| (gx#core-quote-syntax 'meta-state-n))
  (define |gxc[1]#_g10505_| (gx#core-quote-syntax 'meta-state-open))
  (define |gxc[1]#_g10506_| (gx#core-quote-syntax 'meta-state-blocks))
  (define |gxc[1]#_g10507_| (gx#core-quote-syntax 'meta-state-src-set!))
  (define |gxc[1]#_g10508_| (gx#core-quote-syntax 'meta-state-n-set!))
  (define |gxc[1]#_g10509_| (gx#core-quote-syntax 'meta-state-open-set!))
  (define |gxc[1]#_g10510_| (gx#core-quote-syntax 'meta-state-blocks-set!))
  (define |gxc[1]#_g10511_| (gx#core-quote-syntax 'meta-state-block::t))
  (define |gxc[1]#_g10512_| (gx#core-quote-syntax 'meta-state-block::t))
  (define |gxc[1]#_g10513_| (gx#core-quote-syntax 'make-meta-state-block))
  (define |gxc[1]#_g10514_| (gx#core-quote-syntax 'meta-state-block?))
  (define |gxc[1]#_g10515_| (gx#core-quote-syntax 'meta-state-block-ctx))
  (define |gxc[1]#_g10516_| (gx#core-quote-syntax 'meta-state-block-phi))
  (define |gxc[1]#_g10517_| (gx#core-quote-syntax 'meta-state-block-n))
  (define |gxc[1]#_g10518_| (gx#core-quote-syntax 'meta-state-block-code))
  (define |gxc[1]#_g10519_| (gx#core-quote-syntax 'meta-state-block-ctx-set!))
  (define |gxc[1]#_g10520_| (gx#core-quote-syntax 'meta-state-block-phi-set!))
  (define |gxc[1]#_g10521_| (gx#core-quote-syntax 'meta-state-block-n-set!))
  (define |gxc[1]#_g10522_| (gx#core-quote-syntax 'meta-state-block-code-set!))
  (begin
    (define |gxc[:0:]#defcompile-method|
      (lambda (_$stx2615_)
        (let ((_g26212700_
               (lambda (_g26222696_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g26222696_))))
          (let ((_g26202774_
                 (lambda (_g26222704_)
                   (if (gx#stx-pair? _g26222704_)
                       (let ((_e26832707_ (gx#syntax-e _g26222704_)))
                         (let ((_hd26842711_ (##car _e26832707_))
                               (_tl26852714_ (##cdr _e26832707_)))
                           (if (gx#stx-pair? _tl26852714_)
                               (let ((_e26862717_ (gx#syntax-e _tl26852714_)))
                                 (let ((_hd26872721_ (##car _e26862717_))
                                       (_tl26882724_ (##cdr _e26862717_)))
                                   (if (gx#stx-pair? _tl26882724_)
                                       (let ((_e26892727_
                                              (gx#syntax-e _tl26882724_)))
                                         (let ((_hd26902731_
                                                (##car _e26892727_))
                                               (_tl26912734_
                                                (##cdr _e26892727_)))
                                           (if (gx#stx-pair? _hd26902731_)
                                               (let ((_e26922737_
                                                      (gx#syntax-e
                                                       _hd26902731_)))
                                                 (let ((_hd26932741_
                                                        (##car _e26922737_))
                                                       (_tl26942744_
                                                        (##cdr _e26922737_)))
                                                   ((lambda (_L2747_
                                                             _L2749_
                                                             _L2750_
                                                             _L2751_
                                                             _L2752_)
                                                      (if (gx#identifier?
                                                           _L2751_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin)
                        (cons (cons _L2752_
                                    (cons '#f
                                          (cons (cons _L2750_ _L2749_)
                                                _L2747_)))
                              (cons (cons (gx#datum->syntax '#f 'define)
                                          (cons (cons _L2751_
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
                                                  (cons _L2750_ '()))
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
                  (_g26212700_ _g26222704_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl26912734_
                                                    _tl26942744_
                                                    _hd26932741_
                                                    _hd26872721_
                                                    _hd26842711_)))
                                               (_g26212700_ _g26222704_))))
                                       (_g26212700_ _g26222704_))))
                               (_g26212700_ _g26222704_))))
                       (_g26212700_ _g26222704_)))))
            (let ((_g26192955_
                   (lambda (_g26222778_)
                     (if (gx#stx-pair? _g26222778_)
                         (let ((_e26402781_ (gx#syntax-e _g26222778_)))
                           (let ((_hd26412785_ (##car _e26402781_))
                                 (_tl26422788_ (##cdr _e26402781_)))
                             (if (gx#stx-pair? _tl26422788_)
                                 (let ((_e26432791_
                                        (gx#syntax-e _tl26422788_)))
                                   (let ((_hd26442795_ (##car _e26432791_))
                                         (_tl26452798_ (##cdr _e26432791_)))
                                     (if (gx#stx-datum? _hd26442795_)
                                         (if (equal? (gx#stx-e _hd26442795_)
                                                     '#f)
                                             (if (gx#stx-pair? _tl26452798_)
                                                 (let ((_e26462801_
                                                        (gx#syntax-e
                                                         _tl26452798_)))
                                                   (let ((_hd26472805_
                                                          (##car _e26462801_))
                                                         (_tl26482808_
                                                          (##cdr _e26462801_)))
                                                     (if (gx#stx-pair?
                                                          _hd26472805_)
                                                         (let ((_e26492811_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd26472805_)))
                   (let ((_hd26502815_ (##car _e26492811_))
                         (_tl26512818_ (##cdr _e26492811_)))
                     (if (gx#stx-pair/null? _tl26512818_)
                         (if (fx>= (gx#stx-length _tl26512818_) '0)
                             (let ((_g10495_
                                    (gx#syntax-split-splice _tl26512818_ '0)))
                               (begin
                                 (let ((_g10496_ (values-count _g10495_)))
                                   (if (not (fx= _g10496_ 2))
                                       (error "Context expects 2 values"
                                              _g10496_)))
                                 (let ((_target26522821_
                                        (values-ref _g10495_ 0))
                                       (_tl26542824_ (values-ref _g10495_ 1)))
                                   (if (gx#stx-null? _tl26542824_)
                                       (letrec ((_loop26552827_
                                                 (lambda (_hd26532831_
                                                          _super26592834_)
                                                   (if (gx#stx-pair?
                                                        _hd26532831_)
                                                       (let ((_e26562837_
                                                              (gx#syntax-e
                                                               _hd26532831_)))
                                                         (let ((_lp-hd26572841_
                                                                (##car _e26562837_))
                                                               (_lp-tl26582844_
                                                                (##cdr _e26562837_)))
                                                           (_loop26552827_
                                                            _lp-tl26582844_
                                                            (cons _lp-hd26572841_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _super26592834_))))
               (let ((_super26602847_ (reverse _super26592834_)))
                 (if (gx#stx-pair/null? _tl26482808_)
                     (if (fx>= (gx#stx-length _tl26482808_) '0)
                         (let ((_g10497_
                                (gx#syntax-split-splice _tl26482808_ '0)))
                           (begin
                             (let ((_g10498_ (values-count _g10497_)))
                               (if (not (fx= _g10498_ 2))
                                   (error "Context expects 2 values"
                                          _g10498_)))
                             (let ((_target26612851_ (values-ref _g10497_ 0))
                                   (_tl26632854_ (values-ref _g10497_ 1)))
                               (if (gx#stx-null? _tl26632854_)
                                   (letrec ((_loop26642857_
                                             (lambda (_hd26622861_
                                                      _method26682864_
                                                      _symbol26692866_)
                                               (if (gx#stx-pair? _hd26622861_)
                                                   (let ((_e26652869_
                                                          (gx#syntax-e
                                                           _hd26622861_)))
                                                     (let ((_lp-hd26662873_
                                                            (##car _e26652869_))
                                                           (_lp-tl26672876_
                                                            (##cdr _e26652869_)))
                                                       (if (gx#stx-pair?
                                                            _lp-hd26662873_)
                                                           (let ((_e26722879_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _lp-hd26662873_)))
                     (let ((_hd26732883_ (##car _e26722879_))
                           (_tl26742886_ (##cdr _e26722879_)))
                       (if (gx#stx-pair? _tl26742886_)
                           (let ((_e26752889_ (gx#syntax-e _tl26742886_)))
                             (let ((_hd26762893_ (##car _e26752889_))
                                   (_tl26772896_ (##cdr _e26752889_)))
                               (if (gx#stx-null? _tl26772896_)
                                   (_loop26642857_
                                    _lp-tl26672876_
                                    (cons _hd26762893_ _method26682864_)
                                    (cons _hd26732883_ _symbol26692866_))
                                   (_g26202774_ _g26222778_))))
                           (_g26202774_ _g26222778_))))
                   (_g26202774_ _g26222778_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_method26702899_
                                                          (reverse _method26682864_))
                                                         (_symbol26712902_
                                                          (reverse _symbol26692866_)))
                                                     ((lambda (_L2905_
                                                               _L2907_
                                                               _L2908_
                                                               _L2909_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'define)
                                                              (cons _L2909_
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
                    (foldr (lambda (_g29352941_ _g29362944_)
                             (cons (cons (gx#datum->syntax '#f 'hash-copy!)
                                         (cons (gx#datum->syntax '#f 'tbl)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'force)
                                                           (cons _g29352941_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   _g29362944_))
                           (begin
                             (gx#syntax-check-splice-targets _L2905_ _L2907_)
                             (foldr (lambda (_g29372947_
                                             _g29382950_
                                             _g29392952_)
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
                            (cons _g29382950_ '()))
                      (cons _g29372947_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g29392952_))
                                    (cons (gx#datum->syntax '#f 'tbl) '())
                                    _L2905_
                                    _L2907_))
                           _L2908_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  '()))))
              _method26702899_
              _symbol26712902_
              _super26602847_
              _hd26502815_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop26642857_ _target26612851_ '() '()))
                                   (_g26202774_ _g26222778_)))))
                         (_g26202774_ _g26222778_))
                     (_g26202774_ _g26222778_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop26552827_ _target26522821_ '()))
                                       (_g26202774_ _g26222778_)))))
                             (_g26202774_ _g26222778_))
                         (_g26202774_ _g26222778_))))
                 (_g26202774_ _g26222778_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g26202774_ _g26222778_))
                                             (_g26202774_ _g26222778_))
                                         (_g26202774_ _g26222778_))))
                                 (_g26202774_ _g26222778_))))
                         (_g26202774_ _g26222778_)))))
              (let ((_g26183013_
                     (lambda (_g26222959_)
                       (if (gx#stx-pair? _g26222959_)
                           (let ((_e26272962_ (gx#syntax-e _g26222959_)))
                             (let ((_hd26282966_ (##car _e26272962_))
                                   (_tl26292969_ (##cdr _e26272962_)))
                               (if (gx#stx-pair? _tl26292969_)
                                   (let ((_e26302972_
                                          (gx#syntax-e _tl26292969_)))
                                     (let ((_hd26312976_ (##car _e26302972_))
                                           (_tl26322979_ (##cdr _e26302972_)))
                                       (if (gx#stx-pair? _tl26322979_)
                                           (let ((_e26332982_
                                                  (gx#syntax-e _tl26322979_)))
                                             (let ((_hd26342986_
                                                    (##car _e26332982_))
                                                   (_tl26352989_
                                                    (##cdr _e26332982_)))
                                               ((lambda (_L2992_
                                                         _L2994_
                                                         _L2995_
                                                         _L2996_)
                                                  (if (gx#identifier? _L2994_)
                                                      (cons _L2996_
                                                            (cons _L2995_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _L2994_ '()) _L2992_)))
              (_g26192955_ _g26222959_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl26352989_
                                                _hd26342986_
                                                _hd26312976_
                                                _hd26282966_)))
                                           (_g26192955_ _g26222959_))))
                                   (_g26192955_ _g26222959_))))
                           (_g26192955_ _g26222959_)))))
                (_g26183013_ _$stx2615_)))))))
    (define |gxc[:0:]#meta-state|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g10499_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g10500_|
                   (cons |gxc[1]#_g10501_|
                         (cons |gxc[1]#_g10502_|
                               (cons (cons |gxc[1]#_g10503_|
                                           (cons |gxc[1]#_g10504_|
                                                 (cons |gxc[1]#_g10505_|
                                                       (cons |gxc[1]#_g10506_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g10507_|
                                                 (cons |gxc[1]#_g10508_|
                                                       (cons |gxc[1]#_g10509_|
                                                             (cons |gxc[1]#_g10510_|
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
       |gxc[1]#_g10511_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g10512_|
                   (cons |gxc[1]#_g10513_|
                         (cons |gxc[1]#_g10514_|
                               (cons (cons |gxc[1]#_g10515_|
                                           (cons |gxc[1]#_g10516_|
                                                 (cons |gxc[1]#_g10517_|
                                                       (cons |gxc[1]#_g10518_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g10519_|
                                                 (cons |gxc[1]#_g10520_|
                                                       (cons |gxc[1]#_g10521_|
                                                             (cons |gxc[1]#_g10522_|
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
