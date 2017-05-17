(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gxc[1]#_g2438_| (gx#core-quote-syntax 'symbol-table::t))
  (define |gxc[1]#_g2439_| (gx#core-quote-syntax 'symbol-table::t))
  (define |gxc[1]#_g2440_| (gx#core-quote-syntax 'make-symbol-table))
  (define |gxc[1]#_g2441_| (gx#core-quote-syntax 'symbol-table?))
  (define |gxc[1]#_g2442_| (gx#core-quote-syntax 'symbol-table-gensyms))
  (define |gxc[1]#_g2443_| (gx#core-quote-syntax 'symbol-table-bindings))
  (define |gxc[1]#_g2444_| (gx#core-quote-syntax 'symbol-table-gensyms-set!))
  (define |gxc[1]#_g2445_| (gx#core-quote-syntax 'symbol-table-bindings-set!))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx326_)
        (gx#macro-expand-syntax-case _stx326_ 'stx-eq? 'stx-e 'quote)))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx329_)
        (let ((_g332356_
               (lambda (_g333352_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g333352_))))
          (let ((_g331661_
                 (lambda (_g333360_)
                   (if (gx#stx-pair? _g333360_)
                       (let ((_e336363_ (gx#syntax-e _g333360_)))
                         (let ((_hd337367_ (##car _e336363_))
                               (_tl338370_ (##cdr _e336363_)))
                           (if (gx#stx-pair? _tl338370_)
                               (let ((_e339373_ (gx#syntax-e _tl338370_)))
                                 (let ((_hd340377_ (##car _e339373_))
                                       (_tl341380_ (##cdr _e339373_)))
                                   (if (gx#stx-pair/null? _tl341380_)
                                       (if (fx>= (gx#stx-length _tl341380_) '0)
                                           (let ((_g2434_ (gx#syntax-split-splice
                                                           _tl341380_
                                                           '0)))
                                             (begin
                                               (let ((_g2435_ (values-count
                                                               _g2434_)))
                                                 (if (not (fx= _g2435_ 2))
                                                     (error "Context expects 2 values"
                                                            _g2435_)))
                                               (let ((_target342383_
                                                      (values-ref _g2434_ 0))
                                                     (_tl344386_
                                                      (values-ref _g2434_ 1)))
                                                 (if (gx#stx-null? _tl344386_)
                                                     (letrec ((_loop345389_
                                                               (lambda (_hd343393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _clause349396_)
                         (if (gx#stx-pair? _hd343393_)
                             (let ((_e346399_ (gx#syntax-e _hd343393_)))
                               (let ((_lp-hd347403_ (##car _e346399_))
                                     (_lp-tl348406_ (##cdr _e346399_)))
                                 (_loop345389_
                                  _lp-tl348406_
                                  (cons _lp-hd347403_ _clause349396_))))
                             (let ((_clause350409_ (reverse _clause349396_)))
                               ((lambda (_L413_ _L415_)
                                  (if (gx#identifier-list? _L415_)
                                      (let ((_g436453_
                                             (lambda (_g437449_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g437449_))))
                                        (let ((_g435514_
                                               (lambda (_g437457_)
                                                 (if (gx#stx-pair/null?
                                                      _g437457_)
                                                     (if (fx>= (gx#stx-length
                                                                _g437457_)
                                                               '0)
                                                         (let ((_g2436_ (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g437457_
                                 '0)))
                   (begin
                     (let ((_g2437_ (values-count _g2436_)))
                       (if (not (fx= _g2437_ 2))
                           (error "Context expects 2 values" _g2437_)))
                     (let ((_target439460_ (values-ref _g2436_ 0))
                           (_tl441463_ (values-ref _g2436_ 1)))
                       (if (gx#stx-null? _tl441463_)
                           (letrec ((_loop442466_
                                     (lambda (_hd440470_ _clause446473_)
                                       (if (gx#stx-pair? _hd440470_)
                                           (let ((_e443476_
                                                  (gx#syntax-e _hd440470_)))
                                             (let ((_lp-hd444480_
                                                    (##car _e443476_))
                                                   (_lp-tl445483_
                                                    (##cdr _e443476_)))
                                               (_loop442466_
                                                _lp-tl445483_
                                                (cons _lp-hd444480_
                                                      _clause446473_))))
                                           (let ((_clause447486_
                                                  (reverse _clause446473_)))
                                             ((lambda (_L490_)
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
                                        (cons _L415_
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g505508_
                                                                _g506511_)
                                                         (cons _g505508_
                                                               _g506511_))
                                                       '()
                                                       _L490_)))))
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _clause447486_))))))
                             (_loop442466_ _target439460_ '()))
                           (_g436453_ _g437457_)))))
                 (_g436453_ _g437457_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g436453_ _g437457_)))))
                                          (_g435514_
                                           (gx#stx-map
                                            (lambda (_clause518_)
                                              (let ((_g522549_
                                                     (lambda (_g523545_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g523545_))))
                                                (let ((_g521607_
                                                       (lambda (_g523553_)
                                                         (if (gx#stx-pair?
                                                              _g523553_)
                                                             (let ((_e535556_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g523553_)))
                       (let ((_hd536560_ (##car _e535556_))
                             (_tl537563_ (##cdr _e535556_)))
                         (if (gx#stx-pair? _tl537563_)
                             (let ((_e538566_ (gx#syntax-e _tl537563_)))
                               (let ((_hd539570_ (##car _e538566_))
                                     (_tl540573_ (##cdr _e538566_)))
                                 (if (gx#stx-pair? _tl540573_)
                                     (let ((_e541576_
                                            (gx#syntax-e _tl540573_)))
                                       (let ((_hd542580_ (##car _e541576_))
                                             (_tl543583_ (##cdr _e541576_)))
                                         (if (gx#stx-null? _tl543583_)
                                             ((lambda (_L586_ _L588_ _L589_)
                                                (cons _L589_
                                                      (cons _L588_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'syntax)
                                (cons _L586_ '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd542580_
                                              _hd539570_
                                              _hd536560_)
                                             (_g522549_ _g523553_))))
                                     (_g522549_ _g523553_))))
                             (_g522549_ _g523553_))))
                     (_g522549_ _g523553_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g520649_
                                                         (lambda (_g523611_)
                                                           (if (gx#stx-pair?
                                                                _g523611_)
                                                               (let ((_e526614_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g523611_)))
                         (let ((_hd527618_ (##car _e526614_))
                               (_tl528621_ (##cdr _e526614_)))
                           (if (gx#stx-pair? _tl528621_)
                               (let ((_e529624_ (gx#syntax-e _tl528621_)))
                                 (let ((_hd530628_ (##car _e529624_))
                                       (_tl531631_ (##cdr _e529624_)))
                                   (if (gx#stx-null? _tl531631_)
                                       ((lambda (_L634_ _L636_)
                                          (cons _L636_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'syntax)
                                                            (cons _L634_ '()))
                                                      '())))
                                        _hd530628_
                                        _hd527618_)
                                       (_g521607_ _g523611_))))
                               (_g521607_ _g523611_))))
                       (_g521607_ _g523611_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g520649_ _clause518_)))))
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g652655_
                                                              _g653658_)
                                                       (cons _g652655_
                                                             _g653658_))
                                                     '()
                                                     _L413_))))))
                                      (_g332356_ _g333360_)))
                                _clause350409_
                                _hd340377_))))))
               (_loop345389_ _target342383_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g332356_ _g333360_)))))
                                           (_g332356_ _g333360_))
                                       (_g332356_ _g333360_))))
                               (_g332356_ _g333360_))))
                       (_g332356_ _g333360_)))))
            (_g331661_ _stx329_)))))
    (define |gxc[:0:]#symbol-table|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g2438_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g2439_|
                   (cons |gxc[1]#_g2440_|
                         (cons |gxc[1]#_g2441_|
                               (cons (cons |gxc[1]#_g2442_|
                                           (cons |gxc[1]#_g2443_| '()))
                                     (cons (cons |gxc[1]#_g2444_|
                                                 (cons |gxc[1]#_g2445_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gxc#symbol-table::t
        '#f
        'symbol-table
        ':init!
        '()
        '(gensyms bindings))))))
