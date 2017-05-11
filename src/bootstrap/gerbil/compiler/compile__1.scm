(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gxc[1]#_g8537_| (gx#core-quote-syntax 'meta-state::t))
  (define |gxc[1]#_g8538_| (gx#core-quote-syntax 'meta-state::t))
  (define |gxc[1]#_g8539_| (gx#core-quote-syntax 'make-meta-state))
  (define |gxc[1]#_g8540_| (gx#core-quote-syntax 'meta-state?))
  (define |gxc[1]#_g8541_| (gx#core-quote-syntax 'meta-state-src))
  (define |gxc[1]#_g8542_| (gx#core-quote-syntax 'meta-state-n))
  (define |gxc[1]#_g8543_| (gx#core-quote-syntax 'meta-state-open))
  (define |gxc[1]#_g8544_| (gx#core-quote-syntax 'meta-state-blocks))
  (define |gxc[1]#_g8545_| (gx#core-quote-syntax 'meta-state-src-set!))
  (define |gxc[1]#_g8546_| (gx#core-quote-syntax 'meta-state-n-set!))
  (define |gxc[1]#_g8547_| (gx#core-quote-syntax 'meta-state-open-set!))
  (define |gxc[1]#_g8548_| (gx#core-quote-syntax 'meta-state-blocks-set!))
  (define |gxc[1]#_g8549_| (gx#core-quote-syntax 'meta-state-block::t))
  (define |gxc[1]#_g8550_| (gx#core-quote-syntax 'meta-state-block::t))
  (define |gxc[1]#_g8551_| (gx#core-quote-syntax 'make-meta-state-block))
  (define |gxc[1]#_g8552_| (gx#core-quote-syntax 'meta-state-block?))
  (define |gxc[1]#_g8553_| (gx#core-quote-syntax 'meta-state-block-ctx))
  (define |gxc[1]#_g8554_| (gx#core-quote-syntax 'meta-state-block-phi))
  (define |gxc[1]#_g8555_| (gx#core-quote-syntax 'meta-state-block-n))
  (define |gxc[1]#_g8556_| (gx#core-quote-syntax 'meta-state-block-code))
  (define |gxc[1]#_g8557_| (gx#core-quote-syntax 'meta-state-block-ctx-set!))
  (define |gxc[1]#_g8558_| (gx#core-quote-syntax 'meta-state-block-phi-set!))
  (define |gxc[1]#_g8559_| (gx#core-quote-syntax 'meta-state-block-n-set!))
  (define |gxc[1]#_g8560_| (gx#core-quote-syntax 'meta-state-block-code-set!))
  (begin
    (define |gxc[:0:]#defcompile-method|
      (lambda (_$stx884_)
        (let ((_g890969_
               (lambda (_g891965_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g891965_))))
          (let ((_g8891045_
                 (lambda (_g891973_)
                   (if (gx#stx-pair? _g891973_)
                       (let ((_e952976_ (gx#syntax-e _g891973_)))
                         (let ((_hd953980_ (##car _e952976_))
                               (_tl954983_ (##cdr _e952976_)))
                           (if (gx#stx-pair? _tl954983_)
                               (let ((_e955986_ (gx#syntax-e _tl954983_)))
                                 (let ((_hd956990_ (##car _e955986_))
                                       (_tl957993_ (##cdr _e955986_)))
                                   (if (gx#stx-pair? _tl957993_)
                                       (let ((_e958996_
                                              (gx#syntax-e _tl957993_)))
                                         (let ((_hd9591000_ (##car _e958996_))
                                               (_tl9601003_ (##cdr _e958996_)))
                                           (if (gx#stx-pair? _hd9591000_)
                                               (let ((_e9611006_
                                                      (gx#syntax-e
                                                       _hd9591000_)))
                                                 (let ((_hd9621010_
                                                        (##car _e9611006_))
                                                       (_tl9631013_
                                                        (##cdr _e9611006_)))
                                                   ((lambda (_L1016_
                                                             _L1018_
                                                             _L1019_
                                                             _L1020_
                                                             _L1021_)
                                                      (if (gx#identifier?
                                                           _L1020_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin)
                        (cons (cons _L1021_
                                    (cons '#f
                                          (cons (cons _L1019_ _L1018_)
                                                _L1016_)))
                              (cons (cons (gx#datum->syntax '#f 'define)
                                          (cons (cons _L1020_
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
                                                  (cons _L1019_ '()))
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
                  (_g890969_ _g891973_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl9601003_
                                                    _tl9631013_
                                                    _hd9621010_
                                                    _hd956990_
                                                    _hd953980_)))
                                               (_g890969_ _g891973_))))
                                       (_g890969_ _g891973_))))
                               (_g890969_ _g891973_))))
                       (_g890969_ _g891973_)))))
            (let ((_g8881226_
                   (lambda (_g8911049_)
                     (if (gx#stx-pair? _g8911049_)
                         (let ((_e9091052_ (gx#syntax-e _g8911049_)))
                           (let ((_hd9101056_ (##car _e9091052_))
                                 (_tl9111059_ (##cdr _e9091052_)))
                             (if (gx#stx-pair? _tl9111059_)
                                 (let ((_e9121062_ (gx#syntax-e _tl9111059_)))
                                   (let ((_hd9131066_ (##car _e9121062_))
                                         (_tl9141069_ (##cdr _e9121062_)))
                                     (if (gx#stx-datum? _hd9131066_)
                                         (if (equal? (gx#stx-e _hd9131066_)
                                                     '#f)
                                             (if (gx#stx-pair? _tl9141069_)
                                                 (let ((_e9151072_
                                                        (gx#syntax-e
                                                         _tl9141069_)))
                                                   (let ((_hd9161076_
                                                          (##car _e9151072_))
                                                         (_tl9171079_
                                                          (##cdr _e9151072_)))
                                                     (if (gx#stx-pair?
                                                          _hd9161076_)
                                                         (let ((_e9181082_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd9161076_)))
                   (let ((_hd9191086_ (##car _e9181082_))
                         (_tl9201089_ (##cdr _e9181082_)))
                     (if (gx#stx-pair/null? _tl9201089_)
                         (if (fx>= (gx#stx-length _tl9201089_) '0)
                             (let ((_g8533_ (gx#syntax-split-splice
                                             _tl9201089_
                                             '0)))
                               (begin
                                 (let ((_g8534_ (values-count _g8533_)))
                                   (if (not (fx= _g8534_ 2))
                                       (error "Context expects 2 values"
                                              _g8534_)))
                                 (let ((_target9211092_ (values-ref _g8533_ 0))
                                       (_tl9231095_ (values-ref _g8533_ 1)))
                                   (if (gx#stx-null? _tl9231095_)
                                       (letrec ((_loop9241098_
                                                 (lambda (_hd9221102_
                                                          _super9281105_)
                                                   (if (gx#stx-pair?
                                                        _hd9221102_)
                                                       (let ((_e9251108_
                                                              (gx#syntax-e
                                                               _hd9221102_)))
                                                         (let ((_lp-hd9261112_
                                                                (##car _e9251108_))
                                                               (_lp-tl9271115_
                                                                (##cdr _e9251108_)))
                                                           (_loop9241098_
                                                            _lp-tl9271115_
                                                            (cons _lp-hd9261112_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _super9281105_))))
               (let ((_super9291118_ (reverse _super9281105_)))
                 (if (gx#stx-pair/null? _tl9171079_)
                     (if (fx>= (gx#stx-length _tl9171079_) '0)
                         (let ((_g8535_ (gx#syntax-split-splice
                                         _tl9171079_
                                         '0)))
                           (begin
                             (let ((_g8536_ (values-count _g8535_)))
                               (if (not (fx= _g8536_ 2))
                                   (error "Context expects 2 values" _g8536_)))
                             (let ((_target9301122_ (values-ref _g8535_ 0))
                                   (_tl9321125_ (values-ref _g8535_ 1)))
                               (if (gx#stx-null? _tl9321125_)
                                   (letrec ((_loop9331128_
                                             (lambda (_hd9311132_
                                                      _method9371135_
                                                      _symbol9381137_)
                                               (if (gx#stx-pair? _hd9311132_)
                                                   (let ((_e9341140_
                                                          (gx#syntax-e
                                                           _hd9311132_)))
                                                     (let ((_lp-hd9351144_
                                                            (##car _e9341140_))
                                                           (_lp-tl9361147_
                                                            (##cdr _e9341140_)))
                                                       (if (gx#stx-pair?
                                                            _lp-hd9351144_)
                                                           (let ((_e9411150_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _lp-hd9351144_)))
                     (let ((_hd9421154_ (##car _e9411150_))
                           (_tl9431157_ (##cdr _e9411150_)))
                       (if (gx#stx-pair? _tl9431157_)
                           (let ((_e9441160_ (gx#syntax-e _tl9431157_)))
                             (let ((_hd9451164_ (##car _e9441160_))
                                   (_tl9461167_ (##cdr _e9441160_)))
                               (if (gx#stx-null? _tl9461167_)
                                   (_loop9331128_
                                    _lp-tl9361147_
                                    (cons _hd9451164_ _method9371135_)
                                    (cons _hd9421154_ _symbol9381137_))
                                   (_g8891045_ _g8911049_))))
                           (_g8891045_ _g8911049_))))
                   (_g8891045_ _g8911049_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_method9391170_
                                                          (reverse _method9371135_))
                                                         (_symbol9401173_
                                                          (reverse _symbol9381137_)))
                                                     ((lambda (_L1176_
                                                               _L1178_
                                                               _L1179_
                                                               _L1180_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'define)
                                                              (cons _L1180_
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
                    (foldr (lambda (_g12061212_ _g12071215_)
                             (cons (cons (gx#datum->syntax '#f 'hash-copy!)
                                         (cons (gx#datum->syntax '#f 'tbl)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'force)
                                                           (cons _g12061212_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   _g12071215_))
                           (begin
                             (gx#syntax-check-splice-targets _L1176_ _L1178_)
                             (foldr (lambda (_g12081218_
                                             _g12091221_
                                             _g12101223_)
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
                            (cons _g12091221_ '()))
                      (cons _g12081218_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g12101223_))
                                    (cons (gx#datum->syntax '#f 'tbl) '())
                                    _L1176_
                                    _L1178_))
                           _L1179_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  '()))))
              _method9391170_
              _symbol9401173_
              _super9291118_
              _hd9191086_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop9331128_ _target9301122_ '() '()))
                                   (_g8891045_ _g8911049_)))))
                         (_g8891045_ _g8911049_))
                     (_g8891045_ _g8911049_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop9241098_ _target9211092_ '()))
                                       (_g8891045_ _g8911049_)))))
                             (_g8891045_ _g8911049_))
                         (_g8891045_ _g8911049_))))
                 (_g8891045_ _g8911049_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g8891045_ _g8911049_))
                                             (_g8891045_ _g8911049_))
                                         (_g8891045_ _g8911049_))))
                                 (_g8891045_ _g8911049_))))
                         (_g8891045_ _g8911049_)))))
              (let ((_g8871284_
                     (lambda (_g8911230_)
                       (if (gx#stx-pair? _g8911230_)
                           (let ((_e8961233_ (gx#syntax-e _g8911230_)))
                             (let ((_hd8971237_ (##car _e8961233_))
                                   (_tl8981240_ (##cdr _e8961233_)))
                               (if (gx#stx-pair? _tl8981240_)
                                   (let ((_e8991243_
                                          (gx#syntax-e _tl8981240_)))
                                     (let ((_hd9001247_ (##car _e8991243_))
                                           (_tl9011250_ (##cdr _e8991243_)))
                                       (if (gx#stx-pair? _tl9011250_)
                                           (let ((_e9021253_
                                                  (gx#syntax-e _tl9011250_)))
                                             (let ((_hd9031257_
                                                    (##car _e9021253_))
                                                   (_tl9041260_
                                                    (##cdr _e9021253_)))
                                               ((lambda (_L1263_
                                                         _L1265_
                                                         _L1266_
                                                         _L1267_)
                                                  (if (gx#identifier? _L1265_)
                                                      (cons _L1267_
                                                            (cons _L1266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _L1265_ '()) _L1263_)))
              (_g8881226_ _g8911230_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl9041260_
                                                _hd9031257_
                                                _hd9001247_
                                                _hd8971237_)))
                                           (_g8881226_ _g8911230_))))
                                   (_g8881226_ _g8911230_))))
                           (_g8881226_ _g8911230_)))))
                (_g8871284_ _$stx884_)))))))
    (define |gxc[:0:]#meta-state|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g8537_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g8538_|
                   (cons |gxc[1]#_g8539_|
                         (cons |gxc[1]#_g8540_|
                               (cons (cons |gxc[1]#_g8541_|
                                           (cons |gxc[1]#_g8542_|
                                                 (cons |gxc[1]#_g8543_|
                                                       (cons |gxc[1]#_g8544_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g8545_|
                                                 (cons |gxc[1]#_g8546_|
                                                       (cons |gxc[1]#_g8547_|
                                                             (cons |gxc[1]#_g8548_|
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
       |gxc[1]#_g8549_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g8550_|
                   (cons |gxc[1]#_g8551_|
                         (cons |gxc[1]#_g8552_|
                               (cons (cons |gxc[1]#_g8553_|
                                           (cons |gxc[1]#_g8554_|
                                                 (cons |gxc[1]#_g8555_|
                                                       (cons |gxc[1]#_g8556_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g8557_|
                                                 (cons |gxc[1]#_g8558_|
                                                       (cons |gxc[1]#_g8559_|
                                                             (cons |gxc[1]#_g8560_|
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
