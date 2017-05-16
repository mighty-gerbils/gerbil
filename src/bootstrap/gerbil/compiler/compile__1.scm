(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gxc[1]#_g9308_| (gx#core-quote-syntax 'meta-state::t))
  (define |gxc[1]#_g9309_| (gx#core-quote-syntax 'meta-state::t))
  (define |gxc[1]#_g9310_| (gx#core-quote-syntax 'make-meta-state))
  (define |gxc[1]#_g9311_| (gx#core-quote-syntax 'meta-state?))
  (define |gxc[1]#_g9312_| (gx#core-quote-syntax 'meta-state-src))
  (define |gxc[1]#_g9313_| (gx#core-quote-syntax 'meta-state-n))
  (define |gxc[1]#_g9314_| (gx#core-quote-syntax 'meta-state-open))
  (define |gxc[1]#_g9315_| (gx#core-quote-syntax 'meta-state-blocks))
  (define |gxc[1]#_g9316_| (gx#core-quote-syntax 'meta-state-src-set!))
  (define |gxc[1]#_g9317_| (gx#core-quote-syntax 'meta-state-n-set!))
  (define |gxc[1]#_g9318_| (gx#core-quote-syntax 'meta-state-open-set!))
  (define |gxc[1]#_g9319_| (gx#core-quote-syntax 'meta-state-blocks-set!))
  (define |gxc[1]#_g9320_| (gx#core-quote-syntax 'meta-state-block::t))
  (define |gxc[1]#_g9321_| (gx#core-quote-syntax 'meta-state-block::t))
  (define |gxc[1]#_g9322_| (gx#core-quote-syntax 'make-meta-state-block))
  (define |gxc[1]#_g9323_| (gx#core-quote-syntax 'meta-state-block?))
  (define |gxc[1]#_g9324_| (gx#core-quote-syntax 'meta-state-block-ctx))
  (define |gxc[1]#_g9325_| (gx#core-quote-syntax 'meta-state-block-phi))
  (define |gxc[1]#_g9326_| (gx#core-quote-syntax 'meta-state-block-n))
  (define |gxc[1]#_g9327_| (gx#core-quote-syntax 'meta-state-block-code))
  (define |gxc[1]#_g9328_| (gx#core-quote-syntax 'meta-state-block-ctx-set!))
  (define |gxc[1]#_g9329_| (gx#core-quote-syntax 'meta-state-block-phi-set!))
  (define |gxc[1]#_g9330_| (gx#core-quote-syntax 'meta-state-block-n-set!))
  (define |gxc[1]#_g9331_| (gx#core-quote-syntax 'meta-state-block-code-set!))
  (begin
    (define |gxc[:0:]#defcompile-method|
      (lambda (_$stx1745_)
        (let ((_g17511830_
               (lambda (_g17521826_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g17521826_))))
          (let ((_g17501904_
                 (lambda (_g17521834_)
                   (if (gx#stx-pair? _g17521834_)
                       (let ((_e18131837_ (gx#syntax-e _g17521834_)))
                         (let ((_hd18141841_ (##car _e18131837_))
                               (_tl18151844_ (##cdr _e18131837_)))
                           (if (gx#stx-pair? _tl18151844_)
                               (let ((_e18161847_ (gx#syntax-e _tl18151844_)))
                                 (let ((_hd18171851_ (##car _e18161847_))
                                       (_tl18181854_ (##cdr _e18161847_)))
                                   (if (gx#stx-pair? _tl18181854_)
                                       (let ((_e18191857_
                                              (gx#syntax-e _tl18181854_)))
                                         (let ((_hd18201861_
                                                (##car _e18191857_))
                                               (_tl18211864_
                                                (##cdr _e18191857_)))
                                           (if (gx#stx-pair? _hd18201861_)
                                               (let ((_e18221867_
                                                      (gx#syntax-e
                                                       _hd18201861_)))
                                                 (let ((_hd18231871_
                                                        (##car _e18221867_))
                                                       (_tl18241874_
                                                        (##cdr _e18221867_)))
                                                   ((lambda (_L1877_
                                                             _L1879_
                                                             _L1880_
                                                             _L1881_
                                                             _L1882_)
                                                      (if (gx#identifier?
                                                           _L1881_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin)
                        (cons (cons _L1882_
                                    (cons '#f
                                          (cons (cons _L1880_ _L1879_)
                                                _L1877_)))
                              (cons (cons (gx#datum->syntax '#f 'define)
                                          (cons (cons _L1881_
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
                                                  (cons _L1880_ '()))
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
                  (_g17511830_ _g17521834_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl18211864_
                                                    _tl18241874_
                                                    _hd18231871_
                                                    _hd18171851_
                                                    _hd18141841_)))
                                               (_g17511830_ _g17521834_))))
                                       (_g17511830_ _g17521834_))))
                               (_g17511830_ _g17521834_))))
                       (_g17511830_ _g17521834_)))))
            (let ((_g17492085_
                   (lambda (_g17521908_)
                     (if (gx#stx-pair? _g17521908_)
                         (let ((_e17701911_ (gx#syntax-e _g17521908_)))
                           (let ((_hd17711915_ (##car _e17701911_))
                                 (_tl17721918_ (##cdr _e17701911_)))
                             (if (gx#stx-pair? _tl17721918_)
                                 (let ((_e17731921_
                                        (gx#syntax-e _tl17721918_)))
                                   (let ((_hd17741925_ (##car _e17731921_))
                                         (_tl17751928_ (##cdr _e17731921_)))
                                     (if (gx#stx-datum? _hd17741925_)
                                         (if (equal? (gx#stx-e _hd17741925_)
                                                     '#f)
                                             (if (gx#stx-pair? _tl17751928_)
                                                 (let ((_e17761931_
                                                        (gx#syntax-e
                                                         _tl17751928_)))
                                                   (let ((_hd17771935_
                                                          (##car _e17761931_))
                                                         (_tl17781938_
                                                          (##cdr _e17761931_)))
                                                     (if (gx#stx-pair?
                                                          _hd17771935_)
                                                         (let ((_e17791941_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd17771935_)))
                   (let ((_hd17801945_ (##car _e17791941_))
                         (_tl17811948_ (##cdr _e17791941_)))
                     (if (gx#stx-pair/null? _tl17811948_)
                         (if (fx>= (gx#stx-length _tl17811948_) '0)
                             (let ((_g9304_ (gx#syntax-split-splice
                                             _tl17811948_
                                             '0)))
                               (begin
                                 (let ((_g9305_ (values-count _g9304_)))
                                   (if (not (fx= _g9305_ 2))
                                       (error "Context expects 2 values"
                                              _g9305_)))
                                 (let ((_target17821951_
                                        (values-ref _g9304_ 0))
                                       (_tl17841954_ (values-ref _g9304_ 1)))
                                   (if (gx#stx-null? _tl17841954_)
                                       (letrec ((_loop17851957_
                                                 (lambda (_hd17831961_
                                                          _super17891964_)
                                                   (if (gx#stx-pair?
                                                        _hd17831961_)
                                                       (let ((_e17861967_
                                                              (gx#syntax-e
                                                               _hd17831961_)))
                                                         (let ((_lp-hd17871971_
                                                                (##car _e17861967_))
                                                               (_lp-tl17881974_
                                                                (##cdr _e17861967_)))
                                                           (_loop17851957_
                                                            _lp-tl17881974_
                                                            (cons _lp-hd17871971_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _super17891964_))))
               (let ((_super17901977_ (reverse _super17891964_)))
                 (if (gx#stx-pair/null? _tl17781938_)
                     (if (fx>= (gx#stx-length _tl17781938_) '0)
                         (let ((_g9306_ (gx#syntax-split-splice
                                         _tl17781938_
                                         '0)))
                           (begin
                             (let ((_g9307_ (values-count _g9306_)))
                               (if (not (fx= _g9307_ 2))
                                   (error "Context expects 2 values" _g9307_)))
                             (let ((_target17911981_ (values-ref _g9306_ 0))
                                   (_tl17931984_ (values-ref _g9306_ 1)))
                               (if (gx#stx-null? _tl17931984_)
                                   (letrec ((_loop17941987_
                                             (lambda (_hd17921991_
                                                      _method17981994_
                                                      _symbol17991996_)
                                               (if (gx#stx-pair? _hd17921991_)
                                                   (let ((_e17951999_
                                                          (gx#syntax-e
                                                           _hd17921991_)))
                                                     (let ((_lp-hd17962003_
                                                            (##car _e17951999_))
                                                           (_lp-tl17972006_
                                                            (##cdr _e17951999_)))
                                                       (if (gx#stx-pair?
                                                            _lp-hd17962003_)
                                                           (let ((_e18022009_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _lp-hd17962003_)))
                     (let ((_hd18032013_ (##car _e18022009_))
                           (_tl18042016_ (##cdr _e18022009_)))
                       (if (gx#stx-pair? _tl18042016_)
                           (let ((_e18052019_ (gx#syntax-e _tl18042016_)))
                             (let ((_hd18062023_ (##car _e18052019_))
                                   (_tl18072026_ (##cdr _e18052019_)))
                               (if (gx#stx-null? _tl18072026_)
                                   (_loop17941987_
                                    _lp-tl17972006_
                                    (cons _hd18062023_ _method17981994_)
                                    (cons _hd18032013_ _symbol17991996_))
                                   (_g17501904_ _g17521908_))))
                           (_g17501904_ _g17521908_))))
                   (_g17501904_ _g17521908_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_method18002029_
                                                          (reverse _method17981994_))
                                                         (_symbol18012032_
                                                          (reverse _symbol17991996_)))
                                                     ((lambda (_L2035_
                                                               _L2037_
                                                               _L2038_
                                                               _L2039_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'define)
                                                              (cons _L2039_
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
                    (foldr (lambda (_g20652071_ _g20662074_)
                             (cons (cons (gx#datum->syntax '#f 'hash-copy!)
                                         (cons (gx#datum->syntax '#f 'tbl)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'force)
                                                           (cons _g20652071_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   _g20662074_))
                           (begin
                             (gx#syntax-check-splice-targets _L2035_ _L2037_)
                             (foldr (lambda (_g20672077_
                                             _g20682080_
                                             _g20692082_)
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
                            (cons _g20682080_ '()))
                      (cons _g20672077_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g20692082_))
                                    (cons (gx#datum->syntax '#f 'tbl) '())
                                    _L2035_
                                    _L2037_))
                           _L2038_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  '()))))
              _method18002029_
              _symbol18012032_
              _super17901977_
              _hd17801945_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop17941987_ _target17911981_ '() '()))
                                   (_g17501904_ _g17521908_)))))
                         (_g17501904_ _g17521908_))
                     (_g17501904_ _g17521908_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop17851957_ _target17821951_ '()))
                                       (_g17501904_ _g17521908_)))))
                             (_g17501904_ _g17521908_))
                         (_g17501904_ _g17521908_))))
                 (_g17501904_ _g17521908_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g17501904_ _g17521908_))
                                             (_g17501904_ _g17521908_))
                                         (_g17501904_ _g17521908_))))
                                 (_g17501904_ _g17521908_))))
                         (_g17501904_ _g17521908_)))))
              (let ((_g17482143_
                     (lambda (_g17522089_)
                       (if (gx#stx-pair? _g17522089_)
                           (let ((_e17572092_ (gx#syntax-e _g17522089_)))
                             (let ((_hd17582096_ (##car _e17572092_))
                                   (_tl17592099_ (##cdr _e17572092_)))
                               (if (gx#stx-pair? _tl17592099_)
                                   (let ((_e17602102_
                                          (gx#syntax-e _tl17592099_)))
                                     (let ((_hd17612106_ (##car _e17602102_))
                                           (_tl17622109_ (##cdr _e17602102_)))
                                       (if (gx#stx-pair? _tl17622109_)
                                           (let ((_e17632112_
                                                  (gx#syntax-e _tl17622109_)))
                                             (let ((_hd17642116_
                                                    (##car _e17632112_))
                                                   (_tl17652119_
                                                    (##cdr _e17632112_)))
                                               ((lambda (_L2122_
                                                         _L2124_
                                                         _L2125_
                                                         _L2126_)
                                                  (if (gx#identifier? _L2124_)
                                                      (cons _L2126_
                                                            (cons _L2125_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _L2124_ '()) _L2122_)))
              (_g17492085_ _g17522089_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl17652119_
                                                _hd17642116_
                                                _hd17612106_
                                                _hd17582096_)))
                                           (_g17492085_ _g17522089_))))
                                   (_g17492085_ _g17522089_))))
                           (_g17492085_ _g17522089_)))))
                (_g17482143_ _$stx1745_)))))))
    (define |gxc[:0:]#meta-state|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g9308_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g9309_|
                   (cons |gxc[1]#_g9310_|
                         (cons |gxc[1]#_g9311_|
                               (cons (cons |gxc[1]#_g9312_|
                                           (cons |gxc[1]#_g9313_|
                                                 (cons |gxc[1]#_g9314_|
                                                       (cons |gxc[1]#_g9315_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g9316_|
                                                 (cons |gxc[1]#_g9317_|
                                                       (cons |gxc[1]#_g9318_|
                                                             (cons |gxc[1]#_g9319_|
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
       |gxc[1]#_g9320_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g9321_|
                   (cons |gxc[1]#_g9322_|
                         (cons |gxc[1]#_g9323_|
                               (cons (cons |gxc[1]#_g9324_|
                                           (cons |gxc[1]#_g9325_|
                                                 (cons |gxc[1]#_g9326_|
                                                       (cons |gxc[1]#_g9327_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g9328_|
                                                 (cons |gxc[1]#_g9329_|
                                                       (cons |gxc[1]#_g9330_|
                                                             (cons |gxc[1]#_g9331_|
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
