(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gxc[1]#_g9671_| (gx#core-quote-syntax 'meta-state::t))
  (define |gxc[1]#_g9672_| (gx#core-quote-syntax 'meta-state::t))
  (define |gxc[1]#_g9673_| (gx#core-quote-syntax 'make-meta-state))
  (define |gxc[1]#_g9674_| (gx#core-quote-syntax 'meta-state?))
  (define |gxc[1]#_g9675_| (gx#core-quote-syntax 'meta-state-src))
  (define |gxc[1]#_g9676_| (gx#core-quote-syntax 'meta-state-n))
  (define |gxc[1]#_g9677_| (gx#core-quote-syntax 'meta-state-open))
  (define |gxc[1]#_g9678_| (gx#core-quote-syntax 'meta-state-blocks))
  (define |gxc[1]#_g9679_| (gx#core-quote-syntax 'meta-state-src-set!))
  (define |gxc[1]#_g9680_| (gx#core-quote-syntax 'meta-state-n-set!))
  (define |gxc[1]#_g9681_| (gx#core-quote-syntax 'meta-state-open-set!))
  (define |gxc[1]#_g9682_| (gx#core-quote-syntax 'meta-state-blocks-set!))
  (define |gxc[1]#_g9683_| (gx#core-quote-syntax 'meta-state-block::t))
  (define |gxc[1]#_g9684_| (gx#core-quote-syntax 'meta-state-block::t))
  (define |gxc[1]#_g9685_| (gx#core-quote-syntax 'make-meta-state-block))
  (define |gxc[1]#_g9686_| (gx#core-quote-syntax 'meta-state-block?))
  (define |gxc[1]#_g9687_| (gx#core-quote-syntax 'meta-state-block-ctx))
  (define |gxc[1]#_g9688_| (gx#core-quote-syntax 'meta-state-block-phi))
  (define |gxc[1]#_g9689_| (gx#core-quote-syntax 'meta-state-block-n))
  (define |gxc[1]#_g9690_| (gx#core-quote-syntax 'meta-state-block-code))
  (define |gxc[1]#_g9691_| (gx#core-quote-syntax 'meta-state-block-ctx-set!))
  (define |gxc[1]#_g9692_| (gx#core-quote-syntax 'meta-state-block-phi-set!))
  (define |gxc[1]#_g9693_| (gx#core-quote-syntax 'meta-state-block-n-set!))
  (define |gxc[1]#_g9694_| (gx#core-quote-syntax 'meta-state-block-code-set!))
  (begin
    (define |gxc[:0:]#defcompile-method|
      (lambda (_$stx2034_)
        (let ((_g20402119_
               (lambda (_g20412115_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g20412115_))))
          (let ((_g20392193_
                 (lambda (_g20412123_)
                   (if (gx#stx-pair? _g20412123_)
                       (let ((_e21022126_ (gx#syntax-e _g20412123_)))
                         (let ((_hd21032130_ (##car _e21022126_))
                               (_tl21042133_ (##cdr _e21022126_)))
                           (if (gx#stx-pair? _tl21042133_)
                               (let ((_e21052136_ (gx#syntax-e _tl21042133_)))
                                 (let ((_hd21062140_ (##car _e21052136_))
                                       (_tl21072143_ (##cdr _e21052136_)))
                                   (if (gx#stx-pair? _tl21072143_)
                                       (let ((_e21082146_
                                              (gx#syntax-e _tl21072143_)))
                                         (let ((_hd21092150_
                                                (##car _e21082146_))
                                               (_tl21102153_
                                                (##cdr _e21082146_)))
                                           (if (gx#stx-pair? _hd21092150_)
                                               (let ((_e21112156_
                                                      (gx#syntax-e
                                                       _hd21092150_)))
                                                 (let ((_hd21122160_
                                                        (##car _e21112156_))
                                                       (_tl21132163_
                                                        (##cdr _e21112156_)))
                                                   ((lambda (_L2166_
                                                             _L2168_
                                                             _L2169_
                                                             _L2170_
                                                             _L2171_)
                                                      (if (gx#identifier?
                                                           _L2170_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin)
                        (cons (cons _L2171_
                                    (cons '#f
                                          (cons (cons _L2169_ _L2168_)
                                                _L2166_)))
                              (cons (cons (gx#datum->syntax '#f 'define)
                                          (cons (cons _L2170_
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
                                                  (cons _L2169_ '()))
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
                  (_g20402119_ _g20412123_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl21102153_
                                                    _tl21132163_
                                                    _hd21122160_
                                                    _hd21062140_
                                                    _hd21032130_)))
                                               (_g20402119_ _g20412123_))))
                                       (_g20402119_ _g20412123_))))
                               (_g20402119_ _g20412123_))))
                       (_g20402119_ _g20412123_)))))
            (let ((_g20382374_
                   (lambda (_g20412197_)
                     (if (gx#stx-pair? _g20412197_)
                         (let ((_e20592200_ (gx#syntax-e _g20412197_)))
                           (let ((_hd20602204_ (##car _e20592200_))
                                 (_tl20612207_ (##cdr _e20592200_)))
                             (if (gx#stx-pair? _tl20612207_)
                                 (let ((_e20622210_
                                        (gx#syntax-e _tl20612207_)))
                                   (let ((_hd20632214_ (##car _e20622210_))
                                         (_tl20642217_ (##cdr _e20622210_)))
                                     (if (gx#stx-datum? _hd20632214_)
                                         (if (equal? (gx#stx-e _hd20632214_)
                                                     '#f)
                                             (if (gx#stx-pair? _tl20642217_)
                                                 (let ((_e20652220_
                                                        (gx#syntax-e
                                                         _tl20642217_)))
                                                   (let ((_hd20662224_
                                                          (##car _e20652220_))
                                                         (_tl20672227_
                                                          (##cdr _e20652220_)))
                                                     (if (gx#stx-pair?
                                                          _hd20662224_)
                                                         (let ((_e20682230_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd20662224_)))
                   (let ((_hd20692234_ (##car _e20682230_))
                         (_tl20702237_ (##cdr _e20682230_)))
                     (if (gx#stx-pair/null? _tl20702237_)
                         (if (fx>= (gx#stx-length _tl20702237_) '0)
                             (let ((_g9667_ (gx#syntax-split-splice
                                             _tl20702237_
                                             '0)))
                               (begin
                                 (let ((_g9668_ (values-count _g9667_)))
                                   (if (not (fx= _g9668_ 2))
                                       (error "Context expects 2 values"
                                              _g9668_)))
                                 (let ((_target20712240_
                                        (values-ref _g9667_ 0))
                                       (_tl20732243_ (values-ref _g9667_ 1)))
                                   (if (gx#stx-null? _tl20732243_)
                                       (letrec ((_loop20742246_
                                                 (lambda (_hd20722250_
                                                          _super20782253_)
                                                   (if (gx#stx-pair?
                                                        _hd20722250_)
                                                       (let ((_e20752256_
                                                              (gx#syntax-e
                                                               _hd20722250_)))
                                                         (let ((_lp-hd20762260_
                                                                (##car _e20752256_))
                                                               (_lp-tl20772263_
                                                                (##cdr _e20752256_)))
                                                           (_loop20742246_
                                                            _lp-tl20772263_
                                                            (cons _lp-hd20762260_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _super20782253_))))
               (let ((_super20792266_ (reverse _super20782253_)))
                 (if (gx#stx-pair/null? _tl20672227_)
                     (if (fx>= (gx#stx-length _tl20672227_) '0)
                         (let ((_g9669_ (gx#syntax-split-splice
                                         _tl20672227_
                                         '0)))
                           (begin
                             (let ((_g9670_ (values-count _g9669_)))
                               (if (not (fx= _g9670_ 2))
                                   (error "Context expects 2 values" _g9670_)))
                             (let ((_target20802270_ (values-ref _g9669_ 0))
                                   (_tl20822273_ (values-ref _g9669_ 1)))
                               (if (gx#stx-null? _tl20822273_)
                                   (letrec ((_loop20832276_
                                             (lambda (_hd20812280_
                                                      _method20872283_
                                                      _symbol20882285_)
                                               (if (gx#stx-pair? _hd20812280_)
                                                   (let ((_e20842288_
                                                          (gx#syntax-e
                                                           _hd20812280_)))
                                                     (let ((_lp-hd20852292_
                                                            (##car _e20842288_))
                                                           (_lp-tl20862295_
                                                            (##cdr _e20842288_)))
                                                       (if (gx#stx-pair?
                                                            _lp-hd20852292_)
                                                           (let ((_e20912298_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _lp-hd20852292_)))
                     (let ((_hd20922302_ (##car _e20912298_))
                           (_tl20932305_ (##cdr _e20912298_)))
                       (if (gx#stx-pair? _tl20932305_)
                           (let ((_e20942308_ (gx#syntax-e _tl20932305_)))
                             (let ((_hd20952312_ (##car _e20942308_))
                                   (_tl20962315_ (##cdr _e20942308_)))
                               (if (gx#stx-null? _tl20962315_)
                                   (_loop20832276_
                                    _lp-tl20862295_
                                    (cons _hd20952312_ _method20872283_)
                                    (cons _hd20922302_ _symbol20882285_))
                                   (_g20392193_ _g20412197_))))
                           (_g20392193_ _g20412197_))))
                   (_g20392193_ _g20412197_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_method20892318_
                                                          (reverse _method20872283_))
                                                         (_symbol20902321_
                                                          (reverse _symbol20882285_)))
                                                     ((lambda (_L2324_
                                                               _L2326_
                                                               _L2327_
                                                               _L2328_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'define)
                                                              (cons _L2328_
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
                    (foldr (lambda (_g23542360_ _g23552363_)
                             (cons (cons (gx#datum->syntax '#f 'hash-copy!)
                                         (cons (gx#datum->syntax '#f 'tbl)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'force)
                                                           (cons _g23542360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   _g23552363_))
                           (begin
                             (gx#syntax-check-splice-targets _L2324_ _L2326_)
                             (foldr (lambda (_g23562366_
                                             _g23572369_
                                             _g23582371_)
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
                            (cons _g23572369_ '()))
                      (cons _g23562366_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g23582371_))
                                    (cons (gx#datum->syntax '#f 'tbl) '())
                                    _L2324_
                                    _L2326_))
                           _L2327_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  '()))))
              _method20892318_
              _symbol20902321_
              _super20792266_
              _hd20692234_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop20832276_ _target20802270_ '() '()))
                                   (_g20392193_ _g20412197_)))))
                         (_g20392193_ _g20412197_))
                     (_g20392193_ _g20412197_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop20742246_ _target20712240_ '()))
                                       (_g20392193_ _g20412197_)))))
                             (_g20392193_ _g20412197_))
                         (_g20392193_ _g20412197_))))
                 (_g20392193_ _g20412197_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g20392193_ _g20412197_))
                                             (_g20392193_ _g20412197_))
                                         (_g20392193_ _g20412197_))))
                                 (_g20392193_ _g20412197_))))
                         (_g20392193_ _g20412197_)))))
              (let ((_g20372432_
                     (lambda (_g20412378_)
                       (if (gx#stx-pair? _g20412378_)
                           (let ((_e20462381_ (gx#syntax-e _g20412378_)))
                             (let ((_hd20472385_ (##car _e20462381_))
                                   (_tl20482388_ (##cdr _e20462381_)))
                               (if (gx#stx-pair? _tl20482388_)
                                   (let ((_e20492391_
                                          (gx#syntax-e _tl20482388_)))
                                     (let ((_hd20502395_ (##car _e20492391_))
                                           (_tl20512398_ (##cdr _e20492391_)))
                                       (if (gx#stx-pair? _tl20512398_)
                                           (let ((_e20522401_
                                                  (gx#syntax-e _tl20512398_)))
                                             (let ((_hd20532405_
                                                    (##car _e20522401_))
                                                   (_tl20542408_
                                                    (##cdr _e20522401_)))
                                               ((lambda (_L2411_
                                                         _L2413_
                                                         _L2414_
                                                         _L2415_)
                                                  (if (gx#identifier? _L2413_)
                                                      (cons _L2415_
                                                            (cons _L2414_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _L2413_ '()) _L2411_)))
              (_g20382374_ _g20412378_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl20542408_
                                                _hd20532405_
                                                _hd20502395_
                                                _hd20472385_)))
                                           (_g20382374_ _g20412378_))))
                                   (_g20382374_ _g20412378_))))
                           (_g20382374_ _g20412378_)))))
                (_g20372432_ _$stx2034_)))))))
    (define |gxc[:0:]#meta-state|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g9671_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g9672_|
                   (cons |gxc[1]#_g9673_|
                         (cons |gxc[1]#_g9674_|
                               (cons (cons |gxc[1]#_g9675_|
                                           (cons |gxc[1]#_g9676_|
                                                 (cons |gxc[1]#_g9677_|
                                                       (cons |gxc[1]#_g9678_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g9679_|
                                                 (cons |gxc[1]#_g9680_|
                                                       (cons |gxc[1]#_g9681_|
                                                             (cons |gxc[1]#_g9682_|
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
       |gxc[1]#_g9683_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g9684_|
                   (cons |gxc[1]#_g9685_|
                         (cons |gxc[1]#_g9686_|
                               (cons (cons |gxc[1]#_g9687_|
                                           (cons |gxc[1]#_g9688_|
                                                 (cons |gxc[1]#_g9689_|
                                                       (cons |gxc[1]#_g9690_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g9691_|
                                                 (cons |gxc[1]#_g9692_|
                                                       (cons |gxc[1]#_g9693_|
                                                             (cons |gxc[1]#_g9694_|
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
