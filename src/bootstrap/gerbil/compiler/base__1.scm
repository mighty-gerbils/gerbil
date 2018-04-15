(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g4791_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g4792_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g4793_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g4794_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g4795_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g4796_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g4797_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx388_)
        (gx#macro-expand-syntax-case__% _stx388_ 'stx-eq? 'stx-e 'quote)))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx391_)
        (let* ((_g394418_
                (lambda (_g395414_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g395414_)))
               (_g393722_
                (lambda (_g395422_)
                  (if (gx#stx-pair? _g395422_)
                      (let ((_e398425_ (gx#syntax-e _g395422_)))
                        (let ((_hd399429_ (##car _e398425_))
                              (_tl400432_ (##cdr _e398425_)))
                          (if (gx#stx-pair? _tl400432_)
                              (let ((_e401435_ (gx#syntax-e _tl400432_)))
                                (let ((_hd402439_ (##car _e401435_))
                                      (_tl403442_ (##cdr _e401435_)))
                                  (if (gx#stx-pair/null? _tl403442_)
                                      (let ((_g4787_ (gx#syntax-split-splice
                                                      _tl403442_
                                                      '0)))
                                        (begin
                                          (let ((_g4788_ (if (##values?
                                                              _g4787_)
                                                             (##vector-length
                                                              _g4787_)
                                                             1)))
                                            (if (not (##fx= _g4788_ 2))
                                                (error "Context expects 2 values"
                                                       _g4788_)))
                                          (let ((_target404445_
                                                 (##vector-ref _g4787_ 0))
                                                (_tl406448_
                                                 (##vector-ref _g4787_ 1)))
                                            (if (gx#stx-null? _tl406448_)
                                                (letrec ((_loop407451_
                                                          (lambda (_hd405455_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause411458_)
                    (if (gx#stx-pair? _hd405455_)
                        (let ((_e408461_ (gx#syntax-e _hd405455_)))
                          (let ((_lp-hd409465_ (##car _e408461_))
                                (_lp-tl410468_ (##cdr _e408461_)))
                            (_loop407451_
                             _lp-tl410468_
                             (cons _lp-hd409465_ _clause411458_))))
                        (let ((_clause412471_ (reverse _clause411458_)))
                          ((lambda (_L475_ _L477_)
                             (if (gx#identifier-list? _L477_)
                                 (let* ((_g497514_
                                         (lambda (_g498510_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g498510_)))
                                        (_g496575_
                                         (lambda (_g498518_)
                                           (if (gx#stx-pair/null? _g498518_)
                                               (let ((_g4789_ (gx#syntax-split-splice
                                                               _g498518_
                                                               '0)))
                                                 (begin
                                                   (let ((_g4790_ (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g4789_)
                              (##vector-length _g4789_)
                              1)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (##fx= _g4790_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                 (error "Context expects 2 values" _g4790_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target500521_
                                                          (##vector-ref
                                                           _g4789_
                                                           0))
                                                         (_tl502524_
                                                          (##vector-ref
                                                           _g4789_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl502524_)
                                                         (letrec ((_loop503527_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd501531_ _clause507534_)
                             (if (gx#stx-pair? _hd501531_)
                                 (let ((_e504537_ (gx#syntax-e _hd501531_)))
                                   (let ((_lp-hd505541_ (##car _e504537_))
                                         (_lp-tl506544_ (##cdr _e504537_)))
                                     (_loop503527_
                                      _lp-tl506544_
                                      (cons _lp-hd505541_ _clause507534_))))
                                 (let ((_clause508547_
                                        (reverse _clause507534_)))
                                   ((lambda (_L551_)
                                      (let ()
                                        (cons (gx#datum->syntax__0 '#f 'lambda)
                                              (cons (cons (gx#datum->syntax__0
                                                           '#f
                                                           '$stx)
                                                          '())
                                                    (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'ast-case)
                        (cons (gx#datum->syntax__0 '#f '$stx)
                              (cons _L477_
                                    (foldr1 (lambda (_g566569_ _g567572_)
                                              (cons _g566569_ _g567572_))
                                            '()
                                            _L551_))))
                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _clause508547_))))))
                   (_loop503527_ _target500521_ '()))
                 (_g497514_ _g498518_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g497514_ _g498518_)))))
                                   (_g496575_
                                    (gx#stx-map1
                                     (lambda (_clause579_)
                                       (let* ((___stx47444745_ _clause579_)
                                              (_g583610_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  ___stx47444745_))))
                                         (let ((___kont47474748_
                                                (lambda (_L695_ _L697_)
                                                  (cons _L697_
                                                        (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'syntax)
                            (cons _L695_ '()))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont47494750_
                                                (lambda (_L647_ _L649_ _L650_)
                                                  (cons _L650_
                                                        (cons _L649_
                                                              (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'syntax)
                                  (cons _L647_ '()))
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-pair? ___stx47444745_)
                                               (let ((_e587675_
                                                      (gx#syntax-e
                                                       ___stx47444745_)))
                                                 (let ((_tl589682_
                                                        (##cdr _e587675_))
                                                       (_hd588679_
                                                        (##car _e587675_)))
                                                   (if (gx#stx-pair?
                                                        _tl589682_)
                                                       (let ((_e590685_
                                                              (gx#syntax-e
                                                               _tl589682_)))
                                                         (let ((_tl592692_
                                                                (##cdr _e590685_))
                                                               (_hd591689_
                                                                (##car _e590685_)))
                                                           (if (gx#stx-null?
                                                                _tl592692_)
                                                               (___kont47474748_
                                                                _hd591689_
                                                                _hd588679_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl592692_)
                           (let ((_e602637_ (gx#syntax-e _tl592692_)))
                             (let ((_tl604644_ (##cdr _e602637_))
                                   (_hd603641_ (##car _e602637_)))
                               (if (gx#stx-null? _tl604644_)
                                   (___kont47494750_
                                    _hd603641_
                                    _hd591689_
                                    _hd588679_)
                                   (_g583610_))))
                           (_g583610_)))))
               (_g583610_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g583610_)))))
                                     (foldr1 (lambda (_g713716_ _g714719_)
                                               (cons _g713716_ _g714719_))
                                             '()
                                             _L475_))))
                                 (_g394418_ _g395422_)))
                           _clause412471_
                           _hd402439_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop407451_
                                                   _target404445_
                                                   '()))
                                                (_g394418_ _g395422_)))))
                                      (_g394418_ _g395422_))))
                              (_g394418_ _g395422_))))
                      (_g394418_ _g395422_)))))
          (_g393722_ _stx391_))))
    (define |gxc[:0:]#symbol-table|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g4791_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g4791_|
                   (cons |gxc[1]#_g4792_|
                         (cons |gxc[1]#_g4793_|
                               (cons (cons |gxc[1]#_g4794_|
                                           (cons |gxc[1]#_g4795_| '()))
                                     (cons (cons |gxc[1]#_g4796_|
                                                 (cons |gxc[1]#_g4797_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gxc#symbol-table::t
        '#f
        'symbol-table
        ':init!
        '()
        '(gensyms bindings))))))
