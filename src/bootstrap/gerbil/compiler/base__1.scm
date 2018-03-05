(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gxc[1]#_g3135_|
    (gx#make-syntax-quote
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g3136_|
    (gx#make-syntax-quote
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g3137_|
    (gx#make-syntax-quote
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g3138_|
    (gx#make-syntax-quote 'symbol-table? #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g3139_|
    (gx#make-syntax-quote
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g3140_|
    (gx#make-syntax-quote
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g3141_|
    (gx#make-syntax-quote
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g3142_|
    (gx#make-syntax-quote
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx356_)
        (gx#macro-expand-syntax-case _stx356_ 'stx-eq? 'stx-e 'quote)))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx359_)
        (let* ((_g362386_
                (lambda (_g363382_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g363382_)))
               (_g361690_
                (lambda (_g363390_)
                  (if (gx#stx-pair? _g363390_)
                      (let ((_e366393_ (gx#syntax-e _g363390_)))
                        (let ((_hd367397_ (##car _e366393_))
                              (_tl368400_ (##cdr _e366393_)))
                          (if (gx#stx-pair? _tl368400_)
                              (let ((_e369403_ (gx#syntax-e _tl368400_)))
                                (let ((_hd370407_ (##car _e369403_))
                                      (_tl371410_ (##cdr _e369403_)))
                                  (if (gx#stx-pair/null? _tl371410_)
                                      (if (fx>= (gx#stx-length _tl371410_) '0)
                                          (let ((_g3131_ (gx#syntax-split-splice
                                                          _tl371410_
                                                          '0)))
                                            (begin
                                              (let ((_g3132_ (values-count
                                                              _g3131_)))
                                                (if (not (fx= _g3132_ 2))
                                                    (error "Context expects 2 values"
                                                           _g3132_)))
                                              (let ((_target372413_
                                                     (values-ref _g3131_ 0))
                                                    (_tl374416_
                                                     (values-ref _g3131_ 1)))
                                                (if (gx#stx-null? _tl374416_)
                                                    (letrec ((_loop375419_
                                                              (lambda (_hd373423_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause379426_)
                        (if (gx#stx-pair? _hd373423_)
                            (let ((_e376429_ (gx#syntax-e _hd373423_)))
                              (let ((_lp-hd377433_ (##car _e376429_))
                                    (_lp-tl378436_ (##cdr _e376429_)))
                                (_loop375419_
                                 _lp-tl378436_
                                 (cons _lp-hd377433_ _clause379426_))))
                            (let ((_clause380439_ (reverse _clause379426_)))
                              ((lambda (_L443_ _L445_)
                                 (if (gx#identifier-list? _L445_)
                                     (let* ((_g465482_
                                             (lambda (_g466478_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g466478_)))
                                            (_g464543_
                                             (lambda (_g466486_)
                                               (if (gx#stx-pair/null?
                                                    _g466486_)
                                                   (if (fx>= (gx#stx-length
                                                              _g466486_)
                                                             '0)
                                                       (let ((_g3133_ (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g466486_
                               '0)))
                 (begin
                   (let ((_g3134_ (values-count _g3133_)))
                     (if (not (fx= _g3134_ 2))
                         (error "Context expects 2 values" _g3134_)))
                   (let ((_target468489_ (values-ref _g3133_ 0))
                         (_tl470492_ (values-ref _g3133_ 1)))
                     (if (gx#stx-null? _tl470492_)
                         (letrec ((_loop471495_
                                   (lambda (_hd469499_ _clause475502_)
                                     (if (gx#stx-pair? _hd469499_)
                                         (let ((_e472505_
                                                (gx#syntax-e _hd469499_)))
                                           (let ((_lp-hd473509_
                                                  (##car _e472505_))
                                                 (_lp-tl474512_
                                                  (##cdr _e472505_)))
                                             (_loop471495_
                                              _lp-tl474512_
                                              (cons _lp-hd473509_
                                                    _clause475502_))))
                                         (let ((_clause476515_
                                                (reverse _clause475502_)))
                                           ((lambda (_L519_)
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
                                      (cons _L445_
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g534537_
                                                              _g535540_)
                                                       (cons _g534537_
                                                             _g535540_))
                                                     '()
                                                     _L519_)))))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _clause476515_))))))
                           (_loop471495_ _target468489_ '()))
                         (_g465482_ _g466486_)))))
               (_g465482_ _g466486_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g465482_ _g466486_)))))
                                       (_g464543_
                                        (gx#stx-map
                                         (lambda (_clause547_)
                                           (let* ((_g551578_
                                                   (lambda (_g552574_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g552574_)))
                                                  (_g550636_
                                                   (lambda (_g552582_)
                                                     (if (gx#stx-pair?
                                                          _g552582_)
                                                         (let ((_e564585_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g552582_)))
                   (let ((_hd565589_ (##car _e564585_))
                         (_tl566592_ (##cdr _e564585_)))
                     (if (gx#stx-pair? _tl566592_)
                         (let ((_e567595_ (gx#syntax-e _tl566592_)))
                           (let ((_hd568599_ (##car _e567595_))
                                 (_tl569602_ (##cdr _e567595_)))
                             (if (gx#stx-pair? _tl569602_)
                                 (let ((_e570605_ (gx#syntax-e _tl569602_)))
                                   (let ((_hd571609_ (##car _e570605_))
                                         (_tl572612_ (##cdr _e570605_)))
                                     (if (gx#stx-null? _tl572612_)
                                         ((lambda (_L615_ _L617_ _L618_)
                                            (cons _L618_
                                                  (cons _L617_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'syntax)
                            (cons _L615_ '()))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _hd571609_
                                          _hd568599_
                                          _hd565589_)
                                         (_g551578_ _g552582_))))
                                 (_g551578_ _g552582_))))
                         (_g551578_ _g552582_))))
                 (_g551578_ _g552582_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g549678_
                                                   (lambda (_g552640_)
                                                     (if (gx#stx-pair?
                                                          _g552640_)
                                                         (let ((_e555643_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g552640_)))
                   (let ((_hd556647_ (##car _e555643_))
                         (_tl557650_ (##cdr _e555643_)))
                     (if (gx#stx-pair? _tl557650_)
                         (let ((_e558653_ (gx#syntax-e _tl557650_)))
                           (let ((_hd559657_ (##car _e558653_))
                                 (_tl560660_ (##cdr _e558653_)))
                             (if (gx#stx-null? _tl560660_)
                                 ((lambda (_L663_ _L665_)
                                    (cons _L665_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'syntax)
                                                      (cons _L663_ '()))
                                                '())))
                                  _hd559657_
                                  _hd556647_)
                                 (_g550636_ _g552640_))))
                         (_g550636_ _g552640_))))
                 (_g550636_ _g552640_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g549678_ _clause547_)))
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g681684_ _g682687_)
                                                    (cons _g681684_ _g682687_))
                                                  '()
                                                  _L443_)))))
                                     (_g362386_ _g363390_)))
                               _clause380439_
                               _hd370407_))))))
              (_loop375419_ _target372413_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g362386_ _g363390_)))))
                                          (_g362386_ _g363390_))
                                      (_g362386_ _g363390_))))
                              (_g362386_ _g363390_))))
                      (_g362386_ _g363390_)))))
          (_g361690_ _stx359_))))
    (define |gxc[:0:]#symbol-table|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g3135_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g3136_|
                   (cons |gxc[1]#_g3137_|
                         (cons |gxc[1]#_g3138_|
                               (cons (cons |gxc[1]#_g3139_|
                                           (cons |gxc[1]#_g3140_| '()))
                                     (cons (cons |gxc[1]#_g3141_|
                                                 (cons |gxc[1]#_g3142_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gxc#symbol-table::t
        '#f
        'symbol-table
        ':init!
        '()
        '(gensyms bindings))))))
