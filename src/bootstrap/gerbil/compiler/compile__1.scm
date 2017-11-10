(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gxc[1]#_g11112_| (gx#core-quote-syntax 'meta-state::t))
  (define |gxc[1]#_g11113_| (gx#core-quote-syntax 'meta-state::t))
  (define |gxc[1]#_g11114_| (gx#core-quote-syntax 'make-meta-state))
  (define |gxc[1]#_g11115_| (gx#core-quote-syntax 'meta-state?))
  (define |gxc[1]#_g11116_| (gx#core-quote-syntax 'meta-state-src))
  (define |gxc[1]#_g11117_| (gx#core-quote-syntax 'meta-state-n))
  (define |gxc[1]#_g11118_| (gx#core-quote-syntax 'meta-state-open))
  (define |gxc[1]#_g11119_| (gx#core-quote-syntax 'meta-state-blocks))
  (define |gxc[1]#_g11120_| (gx#core-quote-syntax 'meta-state-src-set!))
  (define |gxc[1]#_g11121_| (gx#core-quote-syntax 'meta-state-n-set!))
  (define |gxc[1]#_g11122_| (gx#core-quote-syntax 'meta-state-open-set!))
  (define |gxc[1]#_g11123_| (gx#core-quote-syntax 'meta-state-blocks-set!))
  (define |gxc[1]#_g11124_| (gx#core-quote-syntax 'meta-state-block::t))
  (define |gxc[1]#_g11125_| (gx#core-quote-syntax 'meta-state-block::t))
  (define |gxc[1]#_g11126_| (gx#core-quote-syntax 'make-meta-state-block))
  (define |gxc[1]#_g11127_| (gx#core-quote-syntax 'meta-state-block?))
  (define |gxc[1]#_g11128_| (gx#core-quote-syntax 'meta-state-block-ctx))
  (define |gxc[1]#_g11129_| (gx#core-quote-syntax 'meta-state-block-phi))
  (define |gxc[1]#_g11130_| (gx#core-quote-syntax 'meta-state-block-n))
  (define |gxc[1]#_g11131_| (gx#core-quote-syntax 'meta-state-block-code))
  (define |gxc[1]#_g11132_| (gx#core-quote-syntax 'meta-state-block-ctx-set!))
  (define |gxc[1]#_g11133_| (gx#core-quote-syntax 'meta-state-block-phi-set!))
  (define |gxc[1]#_g11134_| (gx#core-quote-syntax 'meta-state-block-n-set!))
  (define |gxc[1]#_g11135_| (gx#core-quote-syntax 'meta-state-block-code-set!))
  (begin
    (define |gxc[:0:]#defcompile-method|
      (lambda (_$stx2616_)
        (let* ((_g26222701_
                (lambda (_g26232697_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g26232697_)))
               (_g26212775_
                (lambda (_g26232705_)
                  (if (gx#stx-pair? _g26232705_)
                      (let ((_e26842708_ (gx#syntax-e _g26232705_)))
                        (let ((_hd26852712_ (##car _e26842708_))
                              (_tl26862715_ (##cdr _e26842708_)))
                          (if (gx#stx-pair? _tl26862715_)
                              (let ((_e26872718_ (gx#syntax-e _tl26862715_)))
                                (let ((_hd26882722_ (##car _e26872718_))
                                      (_tl26892725_ (##cdr _e26872718_)))
                                  (if (gx#stx-pair? _tl26892725_)
                                      (let ((_e26902728_
                                             (gx#syntax-e _tl26892725_)))
                                        (let ((_hd26912732_
                                               (##car _e26902728_))
                                              (_tl26922735_
                                               (##cdr _e26902728_)))
                                          (if (gx#stx-pair? _hd26912732_)
                                              (let ((_e26932738_
                                                     (gx#syntax-e
                                                      _hd26912732_)))
                                                (let ((_hd26942742_
                                                       (##car _e26932738_))
                                                      (_tl26952745_
                                                       (##cdr _e26932738_)))
                                                  ((lambda (_L2748_
                                                            _L2750_
                                                            _L2751_
                                                            _L2752_
                                                            _L2753_)
                                                     (if (gx#identifier?
                                                          _L2752_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'begin)
                                                               (cons (cons _L2753_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons '#f
                                         (cons (cons _L2751_ _L2750_)
                                               _L2748_)))
                             (cons (cons (gx#datum->syntax '#f 'define)
                                         (cons (cons _L2752_
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
                                                 (cons _L2751_ '()))
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
                 (_g26222701_ _g26232705_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl26922735_
                                                   _tl26952745_
                                                   _hd26942742_
                                                   _hd26882722_
                                                   _hd26852712_)))
                                              (_g26222701_ _g26232705_))))
                                      (_g26222701_ _g26232705_))))
                              (_g26222701_ _g26232705_))))
                      (_g26222701_ _g26232705_))))
               (_g26202956_
                (lambda (_g26232779_)
                  (if (gx#stx-pair? _g26232779_)
                      (let ((_e26412782_ (gx#syntax-e _g26232779_)))
                        (let ((_hd26422786_ (##car _e26412782_))
                              (_tl26432789_ (##cdr _e26412782_)))
                          (if (gx#stx-pair? _tl26432789_)
                              (let ((_e26442792_ (gx#syntax-e _tl26432789_)))
                                (let ((_hd26452796_ (##car _e26442792_))
                                      (_tl26462799_ (##cdr _e26442792_)))
                                  (if (gx#stx-datum? _hd26452796_)
                                      (if (equal? (gx#stx-e _hd26452796_) '#f)
                                          (if (gx#stx-pair? _tl26462799_)
                                              (let ((_e26472802_
                                                     (gx#syntax-e
                                                      _tl26462799_)))
                                                (let ((_hd26482806_
                                                       (##car _e26472802_))
                                                      (_tl26492809_
                                                       (##cdr _e26472802_)))
                                                  (if (gx#stx-pair?
                                                       _hd26482806_)
                                                      (let ((_e26502812_
                                                             (gx#syntax-e
                                                              _hd26482806_)))
                                                        (let ((_hd26512816_
                                                               (##car _e26502812_))
                                                              (_tl26522819_
                                                               (##cdr _e26502812_)))
                                                          (if (gx#stx-pair/null?
                                                               _tl26522819_)
                                                              (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _tl26522819_)
                                '0)
                          (let ((_g11108_
                                 (gx#syntax-split-splice _tl26522819_ '0)))
                            (begin
                              (let ((_g11109_ (values-count _g11108_)))
                                (if (not (fx= _g11109_ 2))
                                    (error "Context expects 2 values"
                                           _g11109_)))
                              (let ((_target26532822_ (values-ref _g11108_ 0))
                                    (_tl26552825_ (values-ref _g11108_ 1)))
                                (if (gx#stx-null? _tl26552825_)
                                    (letrec ((_loop26562828_
                                              (lambda (_hd26542832_
                                                       _super26602835_)
                                                (if (gx#stx-pair? _hd26542832_)
                                                    (let ((_e26572838_
                                                           (gx#syntax-e
                                                            _hd26542832_)))
                                                      (let ((_lp-hd26582842_
                                                             (##car _e26572838_))
                                                            (_lp-tl26592845_
                                                             (##cdr _e26572838_)))
                                                        (_loop26562828_
                                                         _lp-tl26592845_
                                                         (cons _lp-hd26582842_
                                                               _super26602835_))))
                                                    (let ((_super26612848_
                                                           (reverse _super26602835_)))
                                                      (if (gx#stx-pair/null?
                                                           _tl26492809_)
                                                          (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tl26492809_)
                            '0)
                      (let ((_g11110_
                             (gx#syntax-split-splice _tl26492809_ '0)))
                        (begin
                          (let ((_g11111_ (values-count _g11110_)))
                            (if (not (fx= _g11111_ 2))
                                (error "Context expects 2 values" _g11111_)))
                          (let ((_target26622852_ (values-ref _g11110_ 0))
                                (_tl26642855_ (values-ref _g11110_ 1)))
                            (if (gx#stx-null? _tl26642855_)
                                (letrec ((_loop26652858_
                                          (lambda (_hd26632862_
                                                   _method26692865_
                                                   _symbol26702867_)
                                            (if (gx#stx-pair? _hd26632862_)
                                                (let ((_e26662870_
                                                       (gx#syntax-e
                                                        _hd26632862_)))
                                                  (let ((_lp-hd26672874_
                                                         (##car _e26662870_))
                                                        (_lp-tl26682877_
                                                         (##cdr _e26662870_)))
                                                    (if (gx#stx-pair?
                                                         _lp-hd26672874_)
                                                        (let ((_e26732880_
                                                               (gx#syntax-e
                                                                _lp-hd26672874_)))
                                                          (let ((_hd26742884_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e26732880_))
                        (_tl26752887_ (##cdr _e26732880_)))
                    (if (gx#stx-pair? _tl26752887_)
                        (let ((_e26762890_ (gx#syntax-e _tl26752887_)))
                          (let ((_hd26772894_ (##car _e26762890_))
                                (_tl26782897_ (##cdr _e26762890_)))
                            (if (gx#stx-null? _tl26782897_)
                                (_loop26652858_
                                 _lp-tl26682877_
                                 (cons _hd26772894_ _method26692865_)
                                 (cons _hd26742884_ _symbol26702867_))
                                (_g26212775_ _g26232779_))))
                        (_g26212775_ _g26232779_))))
                (_g26212775_ _g26232779_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_method26712900_
                                                       (reverse _method26692865_))
                                                      (_symbol26722903_
                                                       (reverse _symbol26702867_)))
                                                  ((lambda (_L2906_
                                                            _L2908_
                                                            _L2909_
                                                            _L2910_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'define)
                                                           (cons _L2910_
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
                 (foldr (lambda (_g29362942_ _g29372945_)
                          (cons (cons (gx#datum->syntax '#f 'hash-copy!)
                                      (cons (gx#datum->syntax '#f 'tbl)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'force)
                                                        (cons _g29362942_ '()))
                                                  '())))
                                _g29372945_))
                        (begin
                          (gx#syntax-check-splice-targets _L2906_ _L2908_)
                          (foldr (lambda (_g29382948_ _g29392951_ _g29402953_)
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
                         (cons _g29392951_ '()))
                   (cons _g29382948_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _g29402953_))
                                 (cons (gx#datum->syntax '#f 'tbl) '())
                                 _L2906_
                                 _L2908_))
                        _L2909_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _method26712900_
                                                   _symbol26722903_
                                                   _super26612848_
                                                   _hd26512816_))))))
                                  (_loop26652858_ _target26622852_ '() '()))
                                (_g26212775_ _g26232779_)))))
                      (_g26212775_ _g26232779_))
                  (_g26212775_ _g26232779_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop26562828_ _target26532822_ '()))
                                    (_g26212775_ _g26232779_)))))
                          (_g26212775_ _g26232779_))
                      (_g26212775_ _g26232779_))))
              (_g26212775_ _g26232779_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g26212775_ _g26232779_))
                                          (_g26212775_ _g26232779_))
                                      (_g26212775_ _g26232779_))))
                              (_g26212775_ _g26232779_))))
                      (_g26212775_ _g26232779_))))
               (_g26193014_
                (lambda (_g26232960_)
                  (if (gx#stx-pair? _g26232960_)
                      (let ((_e26282963_ (gx#syntax-e _g26232960_)))
                        (let ((_hd26292967_ (##car _e26282963_))
                              (_tl26302970_ (##cdr _e26282963_)))
                          (if (gx#stx-pair? _tl26302970_)
                              (let ((_e26312973_ (gx#syntax-e _tl26302970_)))
                                (let ((_hd26322977_ (##car _e26312973_))
                                      (_tl26332980_ (##cdr _e26312973_)))
                                  (if (gx#stx-pair? _tl26332980_)
                                      (let ((_e26342983_
                                             (gx#syntax-e _tl26332980_)))
                                        (let ((_hd26352987_
                                               (##car _e26342983_))
                                              (_tl26362990_
                                               (##cdr _e26342983_)))
                                          ((lambda (_L2993_
                                                    _L2995_
                                                    _L2996_
                                                    _L2997_)
                                             (if (gx#identifier? _L2995_)
                                                 (cons _L2997_
                                                       (cons _L2996_
                                                             (cons (cons _L2995_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           _L2993_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g26202956_ _g26232960_)))
                                           _tl26362990_
                                           _hd26352987_
                                           _hd26322977_
                                           _hd26292967_)))
                                      (_g26202956_ _g26232960_))))
                              (_g26202956_ _g26232960_))))
                      (_g26202956_ _g26232960_)))))
          (_g26193014_ _$stx2616_))))
    (define |gxc[:0:]#meta-state|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g11112_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g11113_|
                   (cons |gxc[1]#_g11114_|
                         (cons |gxc[1]#_g11115_|
                               (cons (cons |gxc[1]#_g11116_|
                                           (cons |gxc[1]#_g11117_|
                                                 (cons |gxc[1]#_g11118_|
                                                       (cons |gxc[1]#_g11119_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g11120_|
                                                 (cons |gxc[1]#_g11121_|
                                                       (cons |gxc[1]#_g11122_|
                                                             (cons |gxc[1]#_g11123_|
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
       |gxc[1]#_g11124_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g11125_|
                   (cons |gxc[1]#_g11126_|
                         (cons |gxc[1]#_g11127_|
                               (cons (cons |gxc[1]#_g11128_|
                                           (cons |gxc[1]#_g11129_|
                                                 (cons |gxc[1]#_g11130_|
                                                       (cons |gxc[1]#_g11131_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g11132_|
                                                 (cons |gxc[1]#_g11133_|
                                                       (cons |gxc[1]#_g11134_|
                                                             (cons |gxc[1]#_g11135_|
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
