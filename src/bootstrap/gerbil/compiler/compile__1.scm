(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gxc[1]#_g7128_| (gx#core-quote-syntax 'meta-state::t))
  (define |gxc[1]#_g7129_| (gx#core-quote-syntax 'meta-state::t))
  (define |gxc[1]#_g7130_| (gx#core-quote-syntax 'make-meta-state))
  (define |gxc[1]#_g7131_| (gx#core-quote-syntax 'meta-state?))
  (define |gxc[1]#_g7132_| (gx#core-quote-syntax 'meta-state-src))
  (define |gxc[1]#_g7133_| (gx#core-quote-syntax 'meta-state-n))
  (define |gxc[1]#_g7134_| (gx#core-quote-syntax 'meta-state-open))
  (define |gxc[1]#_g7135_| (gx#core-quote-syntax 'meta-state-blocks))
  (define |gxc[1]#_g7136_| (gx#core-quote-syntax 'meta-state-src-set!))
  (define |gxc[1]#_g7137_| (gx#core-quote-syntax 'meta-state-n-set!))
  (define |gxc[1]#_g7138_| (gx#core-quote-syntax 'meta-state-open-set!))
  (define |gxc[1]#_g7139_| (gx#core-quote-syntax 'meta-state-blocks-set!))
  (define |gxc[1]#_g7140_| (gx#core-quote-syntax 'meta-state-block::t))
  (define |gxc[1]#_g7141_| (gx#core-quote-syntax 'meta-state-block::t))
  (define |gxc[1]#_g7142_| (gx#core-quote-syntax 'make-meta-state-block))
  (define |gxc[1]#_g7143_| (gx#core-quote-syntax 'meta-state-block?))
  (define |gxc[1]#_g7144_| (gx#core-quote-syntax 'meta-state-block-ctx))
  (define |gxc[1]#_g7145_| (gx#core-quote-syntax 'meta-state-block-phi))
  (define |gxc[1]#_g7146_| (gx#core-quote-syntax 'meta-state-block-n))
  (define |gxc[1]#_g7147_| (gx#core-quote-syntax 'meta-state-block-code))
  (define |gxc[1]#_g7148_| (gx#core-quote-syntax 'meta-state-block-ctx-set!))
  (define |gxc[1]#_g7149_| (gx#core-quote-syntax 'meta-state-block-phi-set!))
  (define |gxc[1]#_g7150_| (gx#core-quote-syntax 'meta-state-block-n-set!))
  (define |gxc[1]#_g7151_| (gx#core-quote-syntax 'meta-state-block-code-set!))
  (begin
    (define |gxc[:0:]#defcompile-method|
      (lambda (_$stx823_)
        (let ((_g829908_
               (lambda (_g830904_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g830904_))))
          (let ((_g828984_
                 (lambda (_g830912_)
                   (if (gx#stx-pair? _g830912_)
                       (let ((_e891915_ (gx#syntax-e _g830912_)))
                         (let ((_hd892919_ (##car _e891915_))
                               (_tl893922_ (##cdr _e891915_)))
                           (if (gx#stx-pair? _tl893922_)
                               (let ((_e894925_ (gx#syntax-e _tl893922_)))
                                 (let ((_hd895929_ (##car _e894925_))
                                       (_tl896932_ (##cdr _e894925_)))
                                   (if (gx#stx-pair? _tl896932_)
                                       (let ((_e897935_
                                              (gx#syntax-e _tl896932_)))
                                         (let ((_hd898939_ (##car _e897935_))
                                               (_tl899942_ (##cdr _e897935_)))
                                           (if (gx#stx-pair? _hd898939_)
                                               (let ((_e900945_
                                                      (gx#syntax-e
                                                       _hd898939_)))
                                                 (let ((_hd901949_
                                                        (##car _e900945_))
                                                       (_tl902952_
                                                        (##cdr _e900945_)))
                                                   ((lambda (_L955_
                                                             _L957_
                                                             _L958_
                                                             _L959_
                                                             _L960_)
                                                      (if (gx#identifier?
                                                           _L959_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin)
                        (cons (cons _L960_
                                    (cons '#f
                                          (cons (cons _L958_ _L957_) _L955_)))
                              (cons (cons (gx#datum->syntax '#f 'define)
                                          (cons (cons _L959_
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
                                                  (cons _L958_ '()))
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
                  (_g829908_ _g830912_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl899942_
                                                    _tl902952_
                                                    _hd901949_
                                                    _hd895929_
                                                    _hd892919_)))
                                               (_g829908_ _g830912_))))
                                       (_g829908_ _g830912_))))
                               (_g829908_ _g830912_))))
                       (_g829908_ _g830912_)))))
            (let ((_g8271165_
                   (lambda (_g830988_)
                     (if (gx#stx-pair? _g830988_)
                         (let ((_e848991_ (gx#syntax-e _g830988_)))
                           (let ((_hd849995_ (##car _e848991_))
                                 (_tl850998_ (##cdr _e848991_)))
                             (if (gx#stx-pair? _tl850998_)
                                 (let ((_e8511001_ (gx#syntax-e _tl850998_)))
                                   (let ((_hd8521005_ (##car _e8511001_))
                                         (_tl8531008_ (##cdr _e8511001_)))
                                     (if (gx#stx-datum? _hd8521005_)
                                         (if (equal? (gx#stx-e _hd8521005_)
                                                     '#f)
                                             (if (gx#stx-pair? _tl8531008_)
                                                 (let ((_e8541011_
                                                        (gx#syntax-e
                                                         _tl8531008_)))
                                                   (let ((_hd8551015_
                                                          (##car _e8541011_))
                                                         (_tl8561018_
                                                          (##cdr _e8541011_)))
                                                     (if (gx#stx-pair?
                                                          _hd8551015_)
                                                         (let ((_e8571021_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd8551015_)))
                   (let ((_hd8581025_ (##car _e8571021_))
                         (_tl8591028_ (##cdr _e8571021_)))
                     (if (gx#stx-pair/null? _tl8591028_)
                         (if (fx>= (gx#stx-length _tl8591028_) '0)
                             (let ((_g7124_ (gx#syntax-split-splice
                                             _tl8591028_
                                             '0)))
                               (begin
                                 (let ((_g7125_ (values-count _g7124_)))
                                   (if (not (fx= _g7125_ 2))
                                       (error "Context expects 2 values"
                                              _g7125_)))
                                 (let ((_target8601031_ (values-ref _g7124_ 0))
                                       (_tl8621034_ (values-ref _g7124_ 1)))
                                   (if (gx#stx-null? _tl8621034_)
                                       (letrec ((_loop8631037_
                                                 (lambda (_hd8611041_
                                                          _super8671044_)
                                                   (if (gx#stx-pair?
                                                        _hd8611041_)
                                                       (let ((_e8641047_
                                                              (gx#syntax-e
                                                               _hd8611041_)))
                                                         (let ((_lp-hd8651051_
                                                                (##car _e8641047_))
                                                               (_lp-tl8661054_
                                                                (##cdr _e8641047_)))
                                                           (_loop8631037_
                                                            _lp-tl8661054_
                                                            (cons _lp-hd8651051_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _super8671044_))))
               (let ((_super8681057_ (reverse _super8671044_)))
                 (if (gx#stx-pair/null? _tl8561018_)
                     (if (fx>= (gx#stx-length _tl8561018_) '0)
                         (let ((_g7126_ (gx#syntax-split-splice
                                         _tl8561018_
                                         '0)))
                           (begin
                             (let ((_g7127_ (values-count _g7126_)))
                               (if (not (fx= _g7127_ 2))
                                   (error "Context expects 2 values" _g7127_)))
                             (let ((_target8691061_ (values-ref _g7126_ 0))
                                   (_tl8711064_ (values-ref _g7126_ 1)))
                               (if (gx#stx-null? _tl8711064_)
                                   (letrec ((_loop8721067_
                                             (lambda (_hd8701071_
                                                      _method8761074_
                                                      _symbol8771076_)
                                               (if (gx#stx-pair? _hd8701071_)
                                                   (let ((_e8731079_
                                                          (gx#syntax-e
                                                           _hd8701071_)))
                                                     (let ((_lp-hd8741083_
                                                            (##car _e8731079_))
                                                           (_lp-tl8751086_
                                                            (##cdr _e8731079_)))
                                                       (if (gx#stx-pair?
                                                            _lp-hd8741083_)
                                                           (let ((_e8801089_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _lp-hd8741083_)))
                     (let ((_hd8811093_ (##car _e8801089_))
                           (_tl8821096_ (##cdr _e8801089_)))
                       (if (gx#stx-pair? _tl8821096_)
                           (let ((_e8831099_ (gx#syntax-e _tl8821096_)))
                             (let ((_hd8841103_ (##car _e8831099_))
                                   (_tl8851106_ (##cdr _e8831099_)))
                               (if (gx#stx-null? _tl8851106_)
                                   (_loop8721067_
                                    _lp-tl8751086_
                                    (cons _hd8841103_ _method8761074_)
                                    (cons _hd8811093_ _symbol8771076_))
                                   (_g828984_ _g830988_))))
                           (_g828984_ _g830988_))))
                   (_g828984_ _g830988_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_method8781109_
                                                          (reverse _method8761074_))
                                                         (_symbol8791112_
                                                          (reverse _symbol8771076_)))
                                                     ((lambda (_L1115_
                                                               _L1117_
                                                               _L1118_
                                                               _L1119_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'define)
                                                              (cons _L1119_
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
                    (foldr (lambda (_g11451151_ _g11461154_)
                             (cons (cons (gx#datum->syntax '#f 'hash-copy!)
                                         (cons (gx#datum->syntax '#f 'tbl)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'force)
                                                           (cons _g11451151_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   _g11461154_))
                           (begin
                             (gx#syntax-check-splice-targets _L1115_ _L1117_)
                             (foldr (lambda (_g11471157_
                                             _g11481160_
                                             _g11491162_)
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
                            (cons _g11481160_ '()))
                      (cons _g11471157_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g11491162_))
                                    (cons (gx#datum->syntax '#f 'tbl) '())
                                    _L1115_
                                    _L1117_))
                           _L1118_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  '()))))
              _method8781109_
              _symbol8791112_
              _super8681057_
              _hd8581025_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop8721067_ _target8691061_ '() '()))
                                   (_g828984_ _g830988_)))))
                         (_g828984_ _g830988_))
                     (_g828984_ _g830988_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop8631037_ _target8601031_ '()))
                                       (_g828984_ _g830988_)))))
                             (_g828984_ _g830988_))
                         (_g828984_ _g830988_))))
                 (_g828984_ _g830988_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g828984_ _g830988_))
                                             (_g828984_ _g830988_))
                                         (_g828984_ _g830988_))))
                                 (_g828984_ _g830988_))))
                         (_g828984_ _g830988_)))))
              (let ((_g8261223_
                     (lambda (_g8301169_)
                       (if (gx#stx-pair? _g8301169_)
                           (let ((_e8351172_ (gx#syntax-e _g8301169_)))
                             (let ((_hd8361176_ (##car _e8351172_))
                                   (_tl8371179_ (##cdr _e8351172_)))
                               (if (gx#stx-pair? _tl8371179_)
                                   (let ((_e8381182_
                                          (gx#syntax-e _tl8371179_)))
                                     (let ((_hd8391186_ (##car _e8381182_))
                                           (_tl8401189_ (##cdr _e8381182_)))
                                       (if (gx#stx-pair? _tl8401189_)
                                           (let ((_e8411192_
                                                  (gx#syntax-e _tl8401189_)))
                                             (let ((_hd8421196_
                                                    (##car _e8411192_))
                                                   (_tl8431199_
                                                    (##cdr _e8411192_)))
                                               ((lambda (_L1202_
                                                         _L1204_
                                                         _L1205_
                                                         _L1206_)
                                                  (if (gx#identifier? _L1204_)
                                                      (cons _L1206_
                                                            (cons _L1205_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _L1204_ '()) _L1202_)))
              (_g8271165_ _g8301169_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl8431199_
                                                _hd8421196_
                                                _hd8391186_
                                                _hd8361176_)))
                                           (_g8271165_ _g8301169_))))
                                   (_g8271165_ _g8301169_))))
                           (_g8271165_ _g8301169_)))))
                (_g8261223_ _$stx823_)))))))
    (define |gxc[:0:]#meta-state|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g7128_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g7129_|
                   (cons |gxc[1]#_g7130_|
                         (cons |gxc[1]#_g7131_|
                               (cons (cons |gxc[1]#_g7132_|
                                           (cons |gxc[1]#_g7133_|
                                                 (cons |gxc[1]#_g7134_|
                                                       (cons |gxc[1]#_g7135_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g7136_|
                                                 (cons |gxc[1]#_g7137_|
                                                       (cons |gxc[1]#_g7138_|
                                                             (cons |gxc[1]#_g7139_|
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
       |gxc[1]#_g7140_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g7141_|
                   (cons |gxc[1]#_g7142_|
                         (cons |gxc[1]#_g7143_|
                               (cons (cons |gxc[1]#_g7144_|
                                           (cons |gxc[1]#_g7145_|
                                                 (cons |gxc[1]#_g7146_|
                                                       (cons |gxc[1]#_g7147_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g7148_|
                                                 (cons |gxc[1]#_g7149_|
                                                       (cons |gxc[1]#_g7150_|
                                                             (cons |gxc[1]#_g7151_|
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
