(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gxc[1]#_g2345_| (gx#core-quote-syntax 'symbol-table::t))
  (define |gxc[1]#_g2346_| (gx#core-quote-syntax 'symbol-table::t))
  (define |gxc[1]#_g2347_| (gx#core-quote-syntax 'make-symbol-table))
  (define |gxc[1]#_g2348_| (gx#core-quote-syntax 'symbol-table?))
  (define |gxc[1]#_g2349_| (gx#core-quote-syntax 'symbol-table-gensyms))
  (define |gxc[1]#_g2350_| (gx#core-quote-syntax 'symbol-table-bindings))
  (define |gxc[1]#_g2351_| (gx#core-quote-syntax 'symbol-table-gensyms-set!))
  (define |gxc[1]#_g2352_| (gx#core-quote-syntax 'symbol-table-bindings-set!))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx233_)
        (gx#macro-expand-syntax-case _stx233_ 'stx-eq? 'stx-e 'quote)))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx236_)
        (let ((_g239263_
               (lambda (_g240259_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g240259_))))
          (let ((_g238568_
                 (lambda (_g240267_)
                   (if (gx#stx-pair? _g240267_)
                       (let ((_e243270_ (gx#syntax-e _g240267_)))
                         (let ((_hd244274_ (##car _e243270_))
                               (_tl245277_ (##cdr _e243270_)))
                           (if (gx#stx-pair? _tl245277_)
                               (let ((_e246280_ (gx#syntax-e _tl245277_)))
                                 (let ((_hd247284_ (##car _e246280_))
                                       (_tl248287_ (##cdr _e246280_)))
                                   (if (gx#stx-pair/null? _tl248287_)
                                       (if (fx>= (gx#stx-length _tl248287_) '0)
                                           (let ((_g2341_ (gx#syntax-split-splice
                                                           _tl248287_
                                                           '0)))
                                             (begin
                                               (let ((_g2342_ (values-count
                                                               _g2341_)))
                                                 (if (not (fx= _g2342_ 2))
                                                     (error "Context expects 2 values"
                                                            _g2342_)))
                                               (let ((_target249290_
                                                      (values-ref _g2341_ 0))
                                                     (_tl251293_
                                                      (values-ref _g2341_ 1)))
                                                 (if (gx#stx-null? _tl251293_)
                                                     (letrec ((_loop252296_
                                                               (lambda (_hd250300_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _clause256303_)
                         (if (gx#stx-pair? _hd250300_)
                             (let ((_e253306_ (gx#syntax-e _hd250300_)))
                               (let ((_lp-hd254310_ (##car _e253306_))
                                     (_lp-tl255313_ (##cdr _e253306_)))
                                 (_loop252296_
                                  _lp-tl255313_
                                  (cons _lp-hd254310_ _clause256303_))))
                             (let ((_clause257316_ (reverse _clause256303_)))
                               ((lambda (_L320_ _L322_)
                                  (if (gx#identifier-list? _L322_)
                                      (let ((_g343360_
                                             (lambda (_g344356_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g344356_))))
                                        (let ((_g342421_
                                               (lambda (_g344364_)
                                                 (if (gx#stx-pair/null?
                                                      _g344364_)
                                                     (if (fx>= (gx#stx-length
                                                                _g344364_)
                                                               '0)
                                                         (let ((_g2343_ (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g344364_
                                 '0)))
                   (begin
                     (let ((_g2344_ (values-count _g2343_)))
                       (if (not (fx= _g2344_ 2))
                           (error "Context expects 2 values" _g2344_)))
                     (let ((_target346367_ (values-ref _g2343_ 0))
                           (_tl348370_ (values-ref _g2343_ 1)))
                       (if (gx#stx-null? _tl348370_)
                           (letrec ((_loop349373_
                                     (lambda (_hd347377_ _clause353380_)
                                       (if (gx#stx-pair? _hd347377_)
                                           (let ((_e350383_
                                                  (gx#syntax-e _hd347377_)))
                                             (let ((_lp-hd351387_
                                                    (##car _e350383_))
                                                   (_lp-tl352390_
                                                    (##cdr _e350383_)))
                                               (_loop349373_
                                                _lp-tl352390_
                                                (cons _lp-hd351387_
                                                      _clause353380_))))
                                           (let ((_clause354393_
                                                  (reverse _clause353380_)))
                                             ((lambda (_L397_)
                                                (let ()
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '$stx)
                            '())
                      (cons (cons (gx#datum->syntax '#f 'ast-case)
                                  (cons (gx#datum->syntax '#f '$stx)
                                        (cons _L322_
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g412415_
                                                                _g413418_)
                                                         (cons _g412415_
                                                               _g413418_))
                                                       '()
                                                       _L397_)))))
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _clause354393_))))))
                             (_loop349373_ _target346367_ '()))
                           (_g343360_ _g344364_)))))
                 (_g343360_ _g344364_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g343360_ _g344364_)))))
                                          (_g342421_
                                           (gx#stx-map
                                            (lambda (_clause425_)
                                              (let ((_g429456_
                                                     (lambda (_g430452_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g430452_))))
                                                (let ((_g428514_
                                                       (lambda (_g430460_)
                                                         (if (gx#stx-pair?
                                                              _g430460_)
                                                             (let ((_e442463_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g430460_)))
                       (let ((_hd443467_ (##car _e442463_))
                             (_tl444470_ (##cdr _e442463_)))
                         (if (gx#stx-pair? _tl444470_)
                             (let ((_e445473_ (gx#syntax-e _tl444470_)))
                               (let ((_hd446477_ (##car _e445473_))
                                     (_tl447480_ (##cdr _e445473_)))
                                 (if (gx#stx-pair? _tl447480_)
                                     (let ((_e448483_
                                            (gx#syntax-e _tl447480_)))
                                       (let ((_hd449487_ (##car _e448483_))
                                             (_tl450490_ (##cdr _e448483_)))
                                         (if (gx#stx-null? _tl450490_)
                                             ((lambda (_L493_ _L495_ _L496_)
                                                (cons _L496_
                                                      (cons _L495_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'syntax)
                                (cons _L493_ '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd449487_
                                              _hd446477_
                                              _hd443467_)
                                             (_g429456_ _g430460_))))
                                     (_g429456_ _g430460_))))
                             (_g429456_ _g430460_))))
                     (_g429456_ _g430460_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g427556_
                                                         (lambda (_g430518_)
                                                           (if (gx#stx-pair?
                                                                _g430518_)
                                                               (let ((_e433521_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g430518_)))
                         (let ((_hd434525_ (##car _e433521_))
                               (_tl435528_ (##cdr _e433521_)))
                           (if (gx#stx-pair? _tl435528_)
                               (let ((_e436531_ (gx#syntax-e _tl435528_)))
                                 (let ((_hd437535_ (##car _e436531_))
                                       (_tl438538_ (##cdr _e436531_)))
                                   (if (gx#stx-null? _tl438538_)
                                       ((lambda (_L541_ _L543_)
                                          (cons _L543_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'syntax)
                                                            (cons _L541_ '()))
                                                      '())))
                                        _hd437535_
                                        _hd434525_)
                                       (_g428514_ _g430518_))))
                               (_g428514_ _g430518_))))
                       (_g428514_ _g430518_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g427556_ _clause425_)))))
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g559562_
                                                              _g560565_)
                                                       (cons _g559562_
                                                             _g560565_))
                                                     '()
                                                     _L320_))))))
                                      (_g239263_ _g240267_)))
                                _clause257316_
                                _hd247284_))))))
               (_loop252296_ _target249290_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g239263_ _g240267_)))))
                                           (_g239263_ _g240267_))
                                       (_g239263_ _g240267_))))
                               (_g239263_ _g240267_))))
                       (_g239263_ _g240267_)))))
            (_g238568_ _stx236_)))))
    (define |gxc[:0:]#symbol-table|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g2345_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g2346_|
                   (cons |gxc[1]#_g2347_|
                         (cons |gxc[1]#_g2348_|
                               (cons (cons |gxc[1]#_g2349_|
                                           (cons |gxc[1]#_g2350_| '()))
                                     (cons (cons |gxc[1]#_g2351_|
                                                 (cons |gxc[1]#_g2352_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gxc#symbol-table::t
        '#f
        'symbol-table
        ':init!
        '()
        '(gensyms bindings))))))
