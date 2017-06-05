(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gxc[1]#_g2604_| (gx#core-quote-syntax 'symbol-table::t))
  (define |gxc[1]#_g2605_| (gx#core-quote-syntax 'symbol-table::t))
  (define |gxc[1]#_g2606_| (gx#core-quote-syntax 'make-symbol-table))
  (define |gxc[1]#_g2607_| (gx#core-quote-syntax 'symbol-table?))
  (define |gxc[1]#_g2608_| (gx#core-quote-syntax 'symbol-table-gensyms))
  (define |gxc[1]#_g2609_| (gx#core-quote-syntax 'symbol-table-bindings))
  (define |gxc[1]#_g2610_| (gx#core-quote-syntax 'symbol-table-gensyms-set!))
  (define |gxc[1]#_g2611_| (gx#core-quote-syntax 'symbol-table-bindings-set!))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx330_)
        (gx#macro-expand-syntax-case _stx330_ 'stx-eq? 'stx-e 'quote)))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx333_)
        (let ((_g336360_
               (lambda (_g337356_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g337356_))))
          (let ((_g335665_
                 (lambda (_g337364_)
                   (if (gx#stx-pair? _g337364_)
                       (let ((_e340367_ (gx#syntax-e _g337364_)))
                         (let ((_hd341371_ (##car _e340367_))
                               (_tl342374_ (##cdr _e340367_)))
                           (if (gx#stx-pair? _tl342374_)
                               (let ((_e343377_ (gx#syntax-e _tl342374_)))
                                 (let ((_hd344381_ (##car _e343377_))
                                       (_tl345384_ (##cdr _e343377_)))
                                   (if (gx#stx-pair/null? _tl345384_)
                                       (if (fx>= (gx#stx-length _tl345384_) '0)
                                           (let ((_g2600_ (gx#syntax-split-splice
                                                           _tl345384_
                                                           '0)))
                                             (begin
                                               (let ((_g2601_ (values-count
                                                               _g2600_)))
                                                 (if (not (fx= _g2601_ 2))
                                                     (error "Context expects 2 values"
                                                            _g2601_)))
                                               (let ((_target346387_
                                                      (values-ref _g2600_ 0))
                                                     (_tl348390_
                                                      (values-ref _g2600_ 1)))
                                                 (if (gx#stx-null? _tl348390_)
                                                     (letrec ((_loop349393_
                                                               (lambda (_hd347397_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _clause353400_)
                         (if (gx#stx-pair? _hd347397_)
                             (let ((_e350403_ (gx#syntax-e _hd347397_)))
                               (let ((_lp-hd351407_ (##car _e350403_))
                                     (_lp-tl352410_ (##cdr _e350403_)))
                                 (_loop349393_
                                  _lp-tl352410_
                                  (cons _lp-hd351407_ _clause353400_))))
                             (let ((_clause354413_ (reverse _clause353400_)))
                               ((lambda (_L417_ _L419_)
                                  (if (gx#identifier-list? _L419_)
                                      (let ((_g440457_
                                             (lambda (_g441453_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g441453_))))
                                        (let ((_g439518_
                                               (lambda (_g441461_)
                                                 (if (gx#stx-pair/null?
                                                      _g441461_)
                                                     (if (fx>= (gx#stx-length
                                                                _g441461_)
                                                               '0)
                                                         (let ((_g2602_ (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g441461_
                                 '0)))
                   (begin
                     (let ((_g2603_ (values-count _g2602_)))
                       (if (not (fx= _g2603_ 2))
                           (error "Context expects 2 values" _g2603_)))
                     (let ((_target443464_ (values-ref _g2602_ 0))
                           (_tl445467_ (values-ref _g2602_ 1)))
                       (if (gx#stx-null? _tl445467_)
                           (letrec ((_loop446470_
                                     (lambda (_hd444474_ _clause450477_)
                                       (if (gx#stx-pair? _hd444474_)
                                           (let ((_e447480_
                                                  (gx#syntax-e _hd444474_)))
                                             (let ((_lp-hd448484_
                                                    (##car _e447480_))
                                                   (_lp-tl449487_
                                                    (##cdr _e447480_)))
                                               (_loop446470_
                                                _lp-tl449487_
                                                (cons _lp-hd448484_
                                                      _clause450477_))))
                                           (let ((_clause451490_
                                                  (reverse _clause450477_)))
                                             ((lambda (_L494_)
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
                                        (cons _L419_
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g509512_
                                                                _g510515_)
                                                         (cons _g509512_
                                                               _g510515_))
                                                       '()
                                                       _L494_)))))
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _clause451490_))))))
                             (_loop446470_ _target443464_ '()))
                           (_g440457_ _g441461_)))))
                 (_g440457_ _g441461_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g440457_ _g441461_)))))
                                          (_g439518_
                                           (gx#stx-map
                                            (lambda (_clause522_)
                                              (let ((_g526553_
                                                     (lambda (_g527549_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g527549_))))
                                                (let ((_g525611_
                                                       (lambda (_g527557_)
                                                         (if (gx#stx-pair?
                                                              _g527557_)
                                                             (let ((_e539560_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g527557_)))
                       (let ((_hd540564_ (##car _e539560_))
                             (_tl541567_ (##cdr _e539560_)))
                         (if (gx#stx-pair? _tl541567_)
                             (let ((_e542570_ (gx#syntax-e _tl541567_)))
                               (let ((_hd543574_ (##car _e542570_))
                                     (_tl544577_ (##cdr _e542570_)))
                                 (if (gx#stx-pair? _tl544577_)
                                     (let ((_e545580_
                                            (gx#syntax-e _tl544577_)))
                                       (let ((_hd546584_ (##car _e545580_))
                                             (_tl547587_ (##cdr _e545580_)))
                                         (if (gx#stx-null? _tl547587_)
                                             ((lambda (_L590_ _L592_ _L593_)
                                                (cons _L593_
                                                      (cons _L592_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'syntax)
                                (cons _L590_ '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd546584_
                                              _hd543574_
                                              _hd540564_)
                                             (_g526553_ _g527557_))))
                                     (_g526553_ _g527557_))))
                             (_g526553_ _g527557_))))
                     (_g526553_ _g527557_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g524653_
                                                         (lambda (_g527615_)
                                                           (if (gx#stx-pair?
                                                                _g527615_)
                                                               (let ((_e530618_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g527615_)))
                         (let ((_hd531622_ (##car _e530618_))
                               (_tl532625_ (##cdr _e530618_)))
                           (if (gx#stx-pair? _tl532625_)
                               (let ((_e533628_ (gx#syntax-e _tl532625_)))
                                 (let ((_hd534632_ (##car _e533628_))
                                       (_tl535635_ (##cdr _e533628_)))
                                   (if (gx#stx-null? _tl535635_)
                                       ((lambda (_L638_ _L640_)
                                          (cons _L640_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'syntax)
                                                            (cons _L638_ '()))
                                                      '())))
                                        _hd534632_
                                        _hd531622_)
                                       (_g525611_ _g527615_))))
                               (_g525611_ _g527615_))))
                       (_g525611_ _g527615_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g524653_ _clause522_)))))
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g656659_
                                                              _g657662_)
                                                       (cons _g656659_
                                                             _g657662_))
                                                     '()
                                                     _L417_))))))
                                      (_g336360_ _g337364_)))
                                _clause354413_
                                _hd344381_))))))
               (_loop349393_ _target346387_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g336360_ _g337364_)))))
                                           (_g336360_ _g337364_))
                                       (_g336360_ _g337364_))))
                               (_g336360_ _g337364_))))
                       (_g336360_ _g337364_)))))
            (_g335665_ _stx333_)))))
    (define |gxc[:0:]#symbol-table|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g2604_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g2605_|
                   (cons |gxc[1]#_g2606_|
                         (cons |gxc[1]#_g2607_|
                               (cons (cons |gxc[1]#_g2608_|
                                           (cons |gxc[1]#_g2609_| '()))
                                     (cons (cons |gxc[1]#_g2610_|
                                                 (cons |gxc[1]#_g2611_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gxc#symbol-table::t
        '#f
        'symbol-table
        ':init!
        '()
        '(gensyms bindings))))))
