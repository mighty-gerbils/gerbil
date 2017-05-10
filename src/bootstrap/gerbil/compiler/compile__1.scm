(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gxc[1]#_g7187_| (gx#core-quote-syntax 'meta-state::t))
  (define |gxc[1]#_g7188_| (gx#core-quote-syntax 'meta-state::t))
  (define |gxc[1]#_g7189_| (gx#core-quote-syntax 'make-meta-state))
  (define |gxc[1]#_g7190_| (gx#core-quote-syntax 'meta-state?))
  (define |gxc[1]#_g7191_| (gx#core-quote-syntax 'meta-state-src))
  (define |gxc[1]#_g7192_| (gx#core-quote-syntax 'meta-state-n))
  (define |gxc[1]#_g7193_| (gx#core-quote-syntax 'meta-state-open))
  (define |gxc[1]#_g7194_| (gx#core-quote-syntax 'meta-state-blocks))
  (define |gxc[1]#_g7195_| (gx#core-quote-syntax 'meta-state-src-set!))
  (define |gxc[1]#_g7196_| (gx#core-quote-syntax 'meta-state-n-set!))
  (define |gxc[1]#_g7197_| (gx#core-quote-syntax 'meta-state-open-set!))
  (define |gxc[1]#_g7198_| (gx#core-quote-syntax 'meta-state-blocks-set!))
  (define |gxc[1]#_g7199_| (gx#core-quote-syntax 'meta-state-block::t))
  (define |gxc[1]#_g7200_| (gx#core-quote-syntax 'meta-state-block::t))
  (define |gxc[1]#_g7201_| (gx#core-quote-syntax 'make-meta-state-block))
  (define |gxc[1]#_g7202_| (gx#core-quote-syntax 'meta-state-block?))
  (define |gxc[1]#_g7203_| (gx#core-quote-syntax 'meta-state-block-ctx))
  (define |gxc[1]#_g7204_| (gx#core-quote-syntax 'meta-state-block-phi))
  (define |gxc[1]#_g7205_| (gx#core-quote-syntax 'meta-state-block-n))
  (define |gxc[1]#_g7206_| (gx#core-quote-syntax 'meta-state-block-code))
  (define |gxc[1]#_g7207_| (gx#core-quote-syntax 'meta-state-block-ctx-set!))
  (define |gxc[1]#_g7208_| (gx#core-quote-syntax 'meta-state-block-phi-set!))
  (define |gxc[1]#_g7209_| (gx#core-quote-syntax 'meta-state-block-n-set!))
  (define |gxc[1]#_g7210_| (gx#core-quote-syntax 'meta-state-block-code-set!))
  (begin
    (define |gxc[:0:]#defcompile-method|
      (lambda (_$stx882_)
        (let ((_g888967_
               (lambda (_g889963_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g889963_))))
          (let ((_g8871043_
                 (lambda (_g889971_)
                   (if (gx#stx-pair? _g889971_)
                       (let ((_e950974_ (gx#syntax-e _g889971_)))
                         (let ((_hd951978_ (##car _e950974_))
                               (_tl952981_ (##cdr _e950974_)))
                           (if (gx#stx-pair? _tl952981_)
                               (let ((_e953984_ (gx#syntax-e _tl952981_)))
                                 (let ((_hd954988_ (##car _e953984_))
                                       (_tl955991_ (##cdr _e953984_)))
                                   (if (gx#stx-pair? _tl955991_)
                                       (let ((_e956994_
                                              (gx#syntax-e _tl955991_)))
                                         (let ((_hd957998_ (##car _e956994_))
                                               (_tl9581001_ (##cdr _e956994_)))
                                           (if (gx#stx-pair? _hd957998_)
                                               (let ((_e9591004_
                                                      (gx#syntax-e
                                                       _hd957998_)))
                                                 (let ((_hd9601008_
                                                        (##car _e9591004_))
                                                       (_tl9611011_
                                                        (##cdr _e9591004_)))
                                                   ((lambda (_L1014_
                                                             _L1016_
                                                             _L1017_
                                                             _L1018_
                                                             _L1019_)
                                                      (if (gx#identifier?
                                                           _L1018_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin)
                        (cons (cons _L1019_
                                    (cons '#f
                                          (cons (cons _L1017_ _L1016_)
                                                _L1014_)))
                              (cons (cons (gx#datum->syntax '#f 'define)
                                          (cons (cons _L1018_
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
                                                  (cons _L1017_ '()))
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
                  (_g888967_ _g889971_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl9581001_
                                                    _tl9611011_
                                                    _hd9601008_
                                                    _hd954988_
                                                    _hd951978_)))
                                               (_g888967_ _g889971_))))
                                       (_g888967_ _g889971_))))
                               (_g888967_ _g889971_))))
                       (_g888967_ _g889971_)))))
            (let ((_g8861224_
                   (lambda (_g8891047_)
                     (if (gx#stx-pair? _g8891047_)
                         (let ((_e9071050_ (gx#syntax-e _g8891047_)))
                           (let ((_hd9081054_ (##car _e9071050_))
                                 (_tl9091057_ (##cdr _e9071050_)))
                             (if (gx#stx-pair? _tl9091057_)
                                 (let ((_e9101060_ (gx#syntax-e _tl9091057_)))
                                   (let ((_hd9111064_ (##car _e9101060_))
                                         (_tl9121067_ (##cdr _e9101060_)))
                                     (if (gx#stx-datum? _hd9111064_)
                                         (if (equal? (gx#stx-e _hd9111064_)
                                                     '#f)
                                             (if (gx#stx-pair? _tl9121067_)
                                                 (let ((_e9131070_
                                                        (gx#syntax-e
                                                         _tl9121067_)))
                                                   (let ((_hd9141074_
                                                          (##car _e9131070_))
                                                         (_tl9151077_
                                                          (##cdr _e9131070_)))
                                                     (if (gx#stx-pair?
                                                          _hd9141074_)
                                                         (let ((_e9161080_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd9141074_)))
                   (let ((_hd9171084_ (##car _e9161080_))
                         (_tl9181087_ (##cdr _e9161080_)))
                     (if (gx#stx-pair/null? _tl9181087_)
                         (if (fx>= (gx#stx-length _tl9181087_) '0)
                             (let ((_g7183_ (gx#syntax-split-splice
                                             _tl9181087_
                                             '0)))
                               (begin
                                 (let ((_g7184_ (values-count _g7183_)))
                                   (if (not (fx= _g7184_ 2))
                                       (error "Context expects 2 values"
                                              _g7184_)))
                                 (let ((_target9191090_ (values-ref _g7183_ 0))
                                       (_tl9211093_ (values-ref _g7183_ 1)))
                                   (if (gx#stx-null? _tl9211093_)
                                       (letrec ((_loop9221096_
                                                 (lambda (_hd9201100_
                                                          _super9261103_)
                                                   (if (gx#stx-pair?
                                                        _hd9201100_)
                                                       (let ((_e9231106_
                                                              (gx#syntax-e
                                                               _hd9201100_)))
                                                         (let ((_lp-hd9241110_
                                                                (##car _e9231106_))
                                                               (_lp-tl9251113_
                                                                (##cdr _e9231106_)))
                                                           (_loop9221096_
                                                            _lp-tl9251113_
                                                            (cons _lp-hd9241110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _super9261103_))))
               (let ((_super9271116_ (reverse _super9261103_)))
                 (if (gx#stx-pair/null? _tl9151077_)
                     (if (fx>= (gx#stx-length _tl9151077_) '0)
                         (let ((_g7185_ (gx#syntax-split-splice
                                         _tl9151077_
                                         '0)))
                           (begin
                             (let ((_g7186_ (values-count _g7185_)))
                               (if (not (fx= _g7186_ 2))
                                   (error "Context expects 2 values" _g7186_)))
                             (let ((_target9281120_ (values-ref _g7185_ 0))
                                   (_tl9301123_ (values-ref _g7185_ 1)))
                               (if (gx#stx-null? _tl9301123_)
                                   (letrec ((_loop9311126_
                                             (lambda (_hd9291130_
                                                      _method9351133_
                                                      _symbol9361135_)
                                               (if (gx#stx-pair? _hd9291130_)
                                                   (let ((_e9321138_
                                                          (gx#syntax-e
                                                           _hd9291130_)))
                                                     (let ((_lp-hd9331142_
                                                            (##car _e9321138_))
                                                           (_lp-tl9341145_
                                                            (##cdr _e9321138_)))
                                                       (if (gx#stx-pair?
                                                            _lp-hd9331142_)
                                                           (let ((_e9391148_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _lp-hd9331142_)))
                     (let ((_hd9401152_ (##car _e9391148_))
                           (_tl9411155_ (##cdr _e9391148_)))
                       (if (gx#stx-pair? _tl9411155_)
                           (let ((_e9421158_ (gx#syntax-e _tl9411155_)))
                             (let ((_hd9431162_ (##car _e9421158_))
                                   (_tl9441165_ (##cdr _e9421158_)))
                               (if (gx#stx-null? _tl9441165_)
                                   (_loop9311126_
                                    _lp-tl9341145_
                                    (cons _hd9431162_ _method9351133_)
                                    (cons _hd9401152_ _symbol9361135_))
                                   (_g8871043_ _g8891047_))))
                           (_g8871043_ _g8891047_))))
                   (_g8871043_ _g8891047_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_method9371168_
                                                          (reverse _method9351133_))
                                                         (_symbol9381171_
                                                          (reverse _symbol9361135_)))
                                                     ((lambda (_L1174_
                                                               _L1176_
                                                               _L1177_
                                                               _L1178_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'define)
                                                              (cons _L1178_
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
                    (foldr (lambda (_g12041210_ _g12051213_)
                             (cons (cons (gx#datum->syntax '#f 'hash-copy!)
                                         (cons (gx#datum->syntax '#f 'tbl)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'force)
                                                           (cons _g12041210_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   _g12051213_))
                           (begin
                             (gx#syntax-check-splice-targets _L1174_ _L1176_)
                             (foldr (lambda (_g12061216_
                                             _g12071219_
                                             _g12081221_)
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
                            (cons _g12071219_ '()))
                      (cons _g12061216_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g12081221_))
                                    (cons (gx#datum->syntax '#f 'tbl) '())
                                    _L1174_
                                    _L1176_))
                           _L1177_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  '()))))
              _method9371168_
              _symbol9381171_
              _super9271116_
              _hd9171084_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop9311126_ _target9281120_ '() '()))
                                   (_g8871043_ _g8891047_)))))
                         (_g8871043_ _g8891047_))
                     (_g8871043_ _g8891047_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop9221096_ _target9191090_ '()))
                                       (_g8871043_ _g8891047_)))))
                             (_g8871043_ _g8891047_))
                         (_g8871043_ _g8891047_))))
                 (_g8871043_ _g8891047_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g8871043_ _g8891047_))
                                             (_g8871043_ _g8891047_))
                                         (_g8871043_ _g8891047_))))
                                 (_g8871043_ _g8891047_))))
                         (_g8871043_ _g8891047_)))))
              (let ((_g8851282_
                     (lambda (_g8891228_)
                       (if (gx#stx-pair? _g8891228_)
                           (let ((_e8941231_ (gx#syntax-e _g8891228_)))
                             (let ((_hd8951235_ (##car _e8941231_))
                                   (_tl8961238_ (##cdr _e8941231_)))
                               (if (gx#stx-pair? _tl8961238_)
                                   (let ((_e8971241_
                                          (gx#syntax-e _tl8961238_)))
                                     (let ((_hd8981245_ (##car _e8971241_))
                                           (_tl8991248_ (##cdr _e8971241_)))
                                       (if (gx#stx-pair? _tl8991248_)
                                           (let ((_e9001251_
                                                  (gx#syntax-e _tl8991248_)))
                                             (let ((_hd9011255_
                                                    (##car _e9001251_))
                                                   (_tl9021258_
                                                    (##cdr _e9001251_)))
                                               ((lambda (_L1261_
                                                         _L1263_
                                                         _L1264_
                                                         _L1265_)
                                                  (if (gx#identifier? _L1263_)
                                                      (cons _L1265_
                                                            (cons _L1264_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _L1263_ '()) _L1261_)))
              (_g8861224_ _g8891228_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl9021258_
                                                _hd9011255_
                                                _hd8981245_
                                                _hd8951235_)))
                                           (_g8861224_ _g8891228_))))
                                   (_g8861224_ _g8891228_))))
                           (_g8861224_ _g8891228_)))))
                (_g8851282_ _$stx882_)))))))
    (define |gxc[:0:]#meta-state|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g7187_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g7188_|
                   (cons |gxc[1]#_g7189_|
                         (cons |gxc[1]#_g7190_|
                               (cons (cons |gxc[1]#_g7191_|
                                           (cons |gxc[1]#_g7192_|
                                                 (cons |gxc[1]#_g7193_|
                                                       (cons |gxc[1]#_g7194_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g7195_|
                                                 (cons |gxc[1]#_g7196_|
                                                       (cons |gxc[1]#_g7197_|
                                                             (cons |gxc[1]#_g7198_|
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
       |gxc[1]#_g7199_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g7200_|
                   (cons |gxc[1]#_g7201_|
                         (cons |gxc[1]#_g7202_|
                               (cons (cons |gxc[1]#_g7203_|
                                           (cons |gxc[1]#_g7204_|
                                                 (cons |gxc[1]#_g7205_|
                                                       (cons |gxc[1]#_g7206_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g7207_|
                                                 (cons |gxc[1]#_g7208_|
                                                       (cons |gxc[1]#_g7209_|
                                                             (cons |gxc[1]#_g7210_|
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
