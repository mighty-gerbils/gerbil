(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gxc[1]#_g3152_|
    (gx#make-syntax-quote
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g3153_|
    (gx#make-syntax-quote
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g3154_|
    (gx#make-syntax-quote
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g3155_|
    (gx#make-syntax-quote 'symbol-table? #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g3156_|
    (gx#make-syntax-quote
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g3157_|
    (gx#make-syntax-quote
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g3158_|
    (gx#make-syntax-quote
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g3159_|
    (gx#make-syntax-quote
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx335_)
        (gx#macro-expand-syntax-case _stx335_ 'stx-eq? 'stx-e 'quote)))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx338_)
        (let* ((_g341365_
                (lambda (_g342361_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g342361_)))
               (_g340669_
                (lambda (_g342369_)
                  (if (gx#stx-pair? _g342369_)
                      (let ((_e345372_ (gx#syntax-e _g342369_)))
                        (let ((_hd346376_ (##car _e345372_))
                              (_tl347379_ (##cdr _e345372_)))
                          (if (gx#stx-pair? _tl347379_)
                              (let ((_e348382_ (gx#syntax-e _tl347379_)))
                                (let ((_hd349386_ (##car _e348382_))
                                      (_tl350389_ (##cdr _e348382_)))
                                  (if (gx#stx-pair/null? _tl350389_)
                                      (if (fx>= (gx#stx-length _tl350389_) '0)
                                          (let ((_g3148_ (gx#syntax-split-splice
                                                          _tl350389_
                                                          '0)))
                                            (begin
                                              (let ((_g3149_ (values-count
                                                              _g3148_)))
                                                (if (not (fx= _g3149_ 2))
                                                    (error "Context expects 2 values"
                                                           _g3149_)))
                                              (let ((_target351392_
                                                     (values-ref _g3148_ 0))
                                                    (_tl353395_
                                                     (values-ref _g3148_ 1)))
                                                (if (gx#stx-null? _tl353395_)
                                                    (letrec ((_loop354398_
                                                              (lambda (_hd352402_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause358405_)
                        (if (gx#stx-pair? _hd352402_)
                            (let ((_e355408_ (gx#syntax-e _hd352402_)))
                              (let ((_lp-hd356412_ (##car _e355408_))
                                    (_lp-tl357415_ (##cdr _e355408_)))
                                (_loop354398_
                                 _lp-tl357415_
                                 (cons _lp-hd356412_ _clause358405_))))
                            (let ((_clause359418_ (reverse _clause358405_)))
                              ((lambda (_L422_ _L424_)
                                 (if (gx#identifier-list? _L424_)
                                     (let* ((_g444461_
                                             (lambda (_g445457_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g445457_)))
                                            (_g443522_
                                             (lambda (_g445465_)
                                               (if (gx#stx-pair/null?
                                                    _g445465_)
                                                   (if (fx>= (gx#stx-length
                                                              _g445465_)
                                                             '0)
                                                       (let ((_g3150_ (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g445465_
                               '0)))
                 (begin
                   (let ((_g3151_ (values-count _g3150_)))
                     (if (not (fx= _g3151_ 2))
                         (error "Context expects 2 values" _g3151_)))
                   (let ((_target447468_ (values-ref _g3150_ 0))
                         (_tl449471_ (values-ref _g3150_ 1)))
                     (if (gx#stx-null? _tl449471_)
                         (letrec ((_loop450474_
                                   (lambda (_hd448478_ _clause454481_)
                                     (if (gx#stx-pair? _hd448478_)
                                         (let ((_e451484_
                                                (gx#syntax-e _hd448478_)))
                                           (let ((_lp-hd452488_
                                                  (##car _e451484_))
                                                 (_lp-tl453491_
                                                  (##cdr _e451484_)))
                                             (_loop450474_
                                              _lp-tl453491_
                                              (cons _lp-hd452488_
                                                    _clause454481_))))
                                         (let ((_clause455494_
                                                (reverse _clause454481_)))
                                           ((lambda (_L498_)
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
                                      (cons _L424_
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g513516_
                                                              _g514519_)
                                                       (cons _g513516_
                                                             _g514519_))
                                                     '()
                                                     _L498_)))))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _clause455494_))))))
                           (_loop450474_ _target447468_ '()))
                         (_g444461_ _g445465_)))))
               (_g444461_ _g445465_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g444461_ _g445465_)))))
                                       (_g443522_
                                        (gx#stx-map
                                         (lambda (_clause526_)
                                           (let* ((_g530557_
                                                   (lambda (_g531553_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g531553_)))
                                                  (_g529615_
                                                   (lambda (_g531561_)
                                                     (if (gx#stx-pair?
                                                          _g531561_)
                                                         (let ((_e543564_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g531561_)))
                   (let ((_hd544568_ (##car _e543564_))
                         (_tl545571_ (##cdr _e543564_)))
                     (if (gx#stx-pair? _tl545571_)
                         (let ((_e546574_ (gx#syntax-e _tl545571_)))
                           (let ((_hd547578_ (##car _e546574_))
                                 (_tl548581_ (##cdr _e546574_)))
                             (if (gx#stx-pair? _tl548581_)
                                 (let ((_e549584_ (gx#syntax-e _tl548581_)))
                                   (let ((_hd550588_ (##car _e549584_))
                                         (_tl551591_ (##cdr _e549584_)))
                                     (if (gx#stx-null? _tl551591_)
                                         ((lambda (_L594_ _L596_ _L597_)
                                            (cons _L597_
                                                  (cons _L596_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'syntax)
                            (cons _L594_ '()))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _hd550588_
                                          _hd547578_
                                          _hd544568_)
                                         (_g530557_ _g531561_))))
                                 (_g530557_ _g531561_))))
                         (_g530557_ _g531561_))))
                 (_g530557_ _g531561_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g528657_
                                                   (lambda (_g531619_)
                                                     (if (gx#stx-pair?
                                                          _g531619_)
                                                         (let ((_e534622_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g531619_)))
                   (let ((_hd535626_ (##car _e534622_))
                         (_tl536629_ (##cdr _e534622_)))
                     (if (gx#stx-pair? _tl536629_)
                         (let ((_e537632_ (gx#syntax-e _tl536629_)))
                           (let ((_hd538636_ (##car _e537632_))
                                 (_tl539639_ (##cdr _e537632_)))
                             (if (gx#stx-null? _tl539639_)
                                 ((lambda (_L642_ _L644_)
                                    (cons _L644_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'syntax)
                                                      (cons _L642_ '()))
                                                '())))
                                  _hd538636_
                                  _hd535626_)
                                 (_g529615_ _g531619_))))
                         (_g529615_ _g531619_))))
                 (_g529615_ _g531619_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g528657_ _clause526_)))
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g660663_ _g661666_)
                                                    (cons _g660663_ _g661666_))
                                                  '()
                                                  _L422_)))))
                                     (_g341365_ _g342369_)))
                               _clause359418_
                               _hd349386_))))))
              (_loop354398_ _target351392_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g341365_ _g342369_)))))
                                          (_g341365_ _g342369_))
                                      (_g341365_ _g342369_))))
                              (_g341365_ _g342369_))))
                      (_g341365_ _g342369_)))))
          (_g340669_ _stx338_))))
    (define |gxc[:0:]#symbol-table|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g3152_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g3153_|
                   (cons |gxc[1]#_g3154_|
                         (cons |gxc[1]#_g3155_|
                               (cons (cons |gxc[1]#_g3156_|
                                           (cons |gxc[1]#_g3157_| '()))
                                     (cons (cons |gxc[1]#_g3158_|
                                                 (cons |gxc[1]#_g3159_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gxc#symbol-table::t
        '#f
        'symbol-table
        ':init!
        '()
        '(gensyms bindings))))))
