(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gxc[1]#_g1735_| (gx#core-quote-syntax 'symbol-table::t))
  (define |gxc[1]#_g1736_| (gx#core-quote-syntax 'symbol-table::t))
  (define |gxc[1]#_g1737_| (gx#core-quote-syntax 'make-symbol-table))
  (define |gxc[1]#_g1738_| (gx#core-quote-syntax 'symbol-table?))
  (define |gxc[1]#_g1739_| (gx#core-quote-syntax 'symbol-table-gensyms))
  (define |gxc[1]#_g1740_| (gx#core-quote-syntax 'symbol-table-bindings))
  (define |gxc[1]#_g1741_| (gx#core-quote-syntax 'symbol-table-gensyms-set!))
  (define |gxc[1]#_g1742_| (gx#core-quote-syntax 'symbol-table-bindings-set!))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx250_)
        (gx#macro-expand-syntax-case _stx250_ 'stx-eq? 'stx-e 'quote)))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx253_)
        (let ((_g256280_
               (lambda (_g257276_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g257276_))))
          (let ((_g255585_
                 (lambda (_g257284_)
                   (if (gx#stx-pair? _g257284_)
                       (let ((_e260287_ (gx#syntax-e _g257284_)))
                         (let ((_hd261291_ (##car _e260287_))
                               (_tl262294_ (##cdr _e260287_)))
                           (if (gx#stx-pair? _tl262294_)
                               (let ((_e263297_ (gx#syntax-e _tl262294_)))
                                 (let ((_hd264301_ (##car _e263297_))
                                       (_tl265304_ (##cdr _e263297_)))
                                   (if (gx#stx-pair/null? _tl265304_)
                                       (if (fx>= (gx#stx-length _tl265304_) '0)
                                           (let ((_g1731_ (gx#syntax-split-splice
                                                           _tl265304_
                                                           '0)))
                                             (begin
                                               (let ((_g1732_ (values-count
                                                               _g1731_)))
                                                 (if (not (fx= _g1732_ 2))
                                                     (error "Context expects 2 values"
                                                            _g1732_)))
                                               (let ((_target266307_
                                                      (values-ref _g1731_ 0))
                                                     (_tl268310_
                                                      (values-ref _g1731_ 1)))
                                                 (if (gx#stx-null? _tl268310_)
                                                     (letrec ((_loop269313_
                                                               (lambda (_hd267317_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _clause273320_)
                         (if (gx#stx-pair? _hd267317_)
                             (let ((_e270323_ (gx#syntax-e _hd267317_)))
                               (let ((_lp-hd271327_ (##car _e270323_))
                                     (_lp-tl272330_ (##cdr _e270323_)))
                                 (_loop269313_
                                  _lp-tl272330_
                                  (cons _lp-hd271327_ _clause273320_))))
                             (let ((_clause274333_ (reverse _clause273320_)))
                               ((lambda (_L337_ _L339_)
                                  (if (gx#identifier-list? _L339_)
                                      (let ((_g360377_
                                             (lambda (_g361373_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g361373_))))
                                        (let ((_g359438_
                                               (lambda (_g361381_)
                                                 (if (gx#stx-pair/null?
                                                      _g361381_)
                                                     (if (fx>= (gx#stx-length
                                                                _g361381_)
                                                               '0)
                                                         (let ((_g1733_ (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g361381_
                                 '0)))
                   (begin
                     (let ((_g1734_ (values-count _g1733_)))
                       (if (not (fx= _g1734_ 2))
                           (error "Context expects 2 values" _g1734_)))
                     (let ((_target363384_ (values-ref _g1733_ 0))
                           (_tl365387_ (values-ref _g1733_ 1)))
                       (if (gx#stx-null? _tl365387_)
                           (letrec ((_loop366390_
                                     (lambda (_hd364394_ _clause370397_)
                                       (if (gx#stx-pair? _hd364394_)
                                           (let ((_e367400_
                                                  (gx#syntax-e _hd364394_)))
                                             (let ((_lp-hd368404_
                                                    (##car _e367400_))
                                                   (_lp-tl369407_
                                                    (##cdr _e367400_)))
                                               (_loop366390_
                                                _lp-tl369407_
                                                (cons _lp-hd368404_
                                                      _clause370397_))))
                                           (let ((_clause371410_
                                                  (reverse _clause370397_)))
                                             ((lambda (_L414_)
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
                                        (cons _L339_
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g429432_
                                                                _g430435_)
                                                         (cons _g429432_
                                                               _g430435_))
                                                       '()
                                                       _L414_)))))
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _clause371410_))))))
                             (_loop366390_ _target363384_ '()))
                           (_g360377_ _g361381_)))))
                 (_g360377_ _g361381_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g360377_ _g361381_)))))
                                          (_g359438_
                                           (gx#stx-map
                                            (lambda (_clause442_)
                                              (let ((_g446473_
                                                     (lambda (_g447469_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g447469_))))
                                                (let ((_g445531_
                                                       (lambda (_g447477_)
                                                         (if (gx#stx-pair?
                                                              _g447477_)
                                                             (let ((_e459480_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g447477_)))
                       (let ((_hd460484_ (##car _e459480_))
                             (_tl461487_ (##cdr _e459480_)))
                         (if (gx#stx-pair? _tl461487_)
                             (let ((_e462490_ (gx#syntax-e _tl461487_)))
                               (let ((_hd463494_ (##car _e462490_))
                                     (_tl464497_ (##cdr _e462490_)))
                                 (if (gx#stx-pair? _tl464497_)
                                     (let ((_e465500_
                                            (gx#syntax-e _tl464497_)))
                                       (let ((_hd466504_ (##car _e465500_))
                                             (_tl467507_ (##cdr _e465500_)))
                                         (if (gx#stx-null? _tl467507_)
                                             ((lambda (_L510_ _L512_ _L513_)
                                                (cons _L513_
                                                      (cons _L512_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'syntax)
                                (cons _L510_ '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd466504_
                                              _hd463494_
                                              _hd460484_)
                                             (_g446473_ _g447477_))))
                                     (_g446473_ _g447477_))))
                             (_g446473_ _g447477_))))
                     (_g446473_ _g447477_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g444573_
                                                         (lambda (_g447535_)
                                                           (if (gx#stx-pair?
                                                                _g447535_)
                                                               (let ((_e450538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g447535_)))
                         (let ((_hd451542_ (##car _e450538_))
                               (_tl452545_ (##cdr _e450538_)))
                           (if (gx#stx-pair? _tl452545_)
                               (let ((_e453548_ (gx#syntax-e _tl452545_)))
                                 (let ((_hd454552_ (##car _e453548_))
                                       (_tl455555_ (##cdr _e453548_)))
                                   (if (gx#stx-null? _tl455555_)
                                       ((lambda (_L558_ _L560_)
                                          (cons _L560_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'syntax)
                                                            (cons _L558_ '()))
                                                      '())))
                                        _hd454552_
                                        _hd451542_)
                                       (_g445531_ _g447535_))))
                               (_g445531_ _g447535_))))
                       (_g445531_ _g447535_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g444573_ _clause442_)))))
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g576579_
                                                              _g577582_)
                                                       (cons _g576579_
                                                             _g577582_))
                                                     '()
                                                     _L337_))))))
                                      (_g256280_ _g257284_)))
                                _clause274333_
                                _hd264301_))))))
               (_loop269313_ _target266307_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g256280_ _g257284_)))))
                                           (_g256280_ _g257284_))
                                       (_g256280_ _g257284_))))
                               (_g256280_ _g257284_))))
                       (_g256280_ _g257284_)))))
            (_g255585_ _stx253_)))))
    (define |gxc[:0:]#symbol-table|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g1735_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g1736_|
                   (cons |gxc[1]#_g1737_|
                         (cons |gxc[1]#_g1738_|
                               (cons (cons |gxc[1]#_g1739_|
                                           (cons |gxc[1]#_g1740_| '()))
                                     (cons (cons |gxc[1]#_g1741_|
                                                 (cons |gxc[1]#_g1742_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gxc#symbol-table::t
        '#f
        'symbol-table
        ':init!
        '()
        '(gensyms bindings))))))
