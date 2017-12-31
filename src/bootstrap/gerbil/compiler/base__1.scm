(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gxc[1]#_g3026_|
    (gx#make-syntax-quote
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g3027_|
    (gx#make-syntax-quote
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g3028_|
    (gx#make-syntax-quote
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g3029_|
    (gx#make-syntax-quote 'symbol-table? #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g3030_|
    (gx#make-syntax-quote
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g3031_|
    (gx#make-syntax-quote
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g3032_|
    (gx#make-syntax-quote
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g3033_|
    (gx#make-syntax-quote
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx332_)
        (gx#macro-expand-syntax-case _stx332_ 'stx-eq? 'stx-e 'quote)))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx335_)
        (let* ((_g338362_
                (lambda (_g339358_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g339358_)))
               (_g337667_
                (lambda (_g339366_)
                  (if (gx#stx-pair? _g339366_)
                      (let ((_e342369_ (gx#syntax-e _g339366_)))
                        (let ((_hd343373_ (##car _e342369_))
                              (_tl344376_ (##cdr _e342369_)))
                          (if (gx#stx-pair? _tl344376_)
                              (let ((_e345379_ (gx#syntax-e _tl344376_)))
                                (let ((_hd346383_ (##car _e345379_))
                                      (_tl347386_ (##cdr _e345379_)))
                                  (if (gx#stx-pair/null? _tl347386_)
                                      (if (fx>= (gx#stx-length _tl347386_) '0)
                                          (let ((_g3022_ (gx#syntax-split-splice
                                                          _tl347386_
                                                          '0)))
                                            (begin
                                              (let ((_g3023_ (values-count
                                                              _g3022_)))
                                                (if (not (fx= _g3023_ 2))
                                                    (error "Context expects 2 values"
                                                           _g3023_)))
                                              (let ((_target348389_
                                                     (values-ref _g3022_ 0))
                                                    (_tl350392_
                                                     (values-ref _g3022_ 1)))
                                                (if (gx#stx-null? _tl350392_)
                                                    (letrec ((_loop351395_
                                                              (lambda (_hd349399_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause355402_)
                        (if (gx#stx-pair? _hd349399_)
                            (let ((_e352405_ (gx#syntax-e _hd349399_)))
                              (let ((_lp-hd353409_ (##car _e352405_))
                                    (_lp-tl354412_ (##cdr _e352405_)))
                                (_loop351395_
                                 _lp-tl354412_
                                 (cons _lp-hd353409_ _clause355402_))))
                            (let ((_clause356415_ (reverse _clause355402_)))
                              ((lambda (_L419_ _L421_)
                                 (if (gx#identifier-list? _L421_)
                                     (let* ((_g442459_
                                             (lambda (_g443455_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g443455_)))
                                            (_g441520_
                                             (lambda (_g443463_)
                                               (if (gx#stx-pair/null?
                                                    _g443463_)
                                                   (if (fx>= (gx#stx-length
                                                              _g443463_)
                                                             '0)
                                                       (let ((_g3024_ (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g443463_
                               '0)))
                 (begin
                   (let ((_g3025_ (values-count _g3024_)))
                     (if (not (fx= _g3025_ 2))
                         (error "Context expects 2 values" _g3025_)))
                   (let ((_target445466_ (values-ref _g3024_ 0))
                         (_tl447469_ (values-ref _g3024_ 1)))
                     (if (gx#stx-null? _tl447469_)
                         (letrec ((_loop448472_
                                   (lambda (_hd446476_ _clause452479_)
                                     (if (gx#stx-pair? _hd446476_)
                                         (let ((_e449482_
                                                (gx#syntax-e _hd446476_)))
                                           (let ((_lp-hd450486_
                                                  (##car _e449482_))
                                                 (_lp-tl451489_
                                                  (##cdr _e449482_)))
                                             (_loop448472_
                                              _lp-tl451489_
                                              (cons _lp-hd450486_
                                                    _clause452479_))))
                                         (let ((_clause453492_
                                                (reverse _clause452479_)))
                                           ((lambda (_L496_)
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
                                      (cons _L421_
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g511514_
                                                              _g512517_)
                                                       (cons _g511514_
                                                             _g512517_))
                                                     '()
                                                     _L496_)))))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _clause453492_))))))
                           (_loop448472_ _target445466_ '()))
                         (_g442459_ _g443463_)))))
               (_g442459_ _g443463_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g442459_ _g443463_)))))
                                       (_g441520_
                                        (gx#stx-map
                                         (lambda (_clause524_)
                                           (let* ((_g528555_
                                                   (lambda (_g529551_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g529551_)))
                                                  (_g527613_
                                                   (lambda (_g529559_)
                                                     (if (gx#stx-pair?
                                                          _g529559_)
                                                         (let ((_e541562_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g529559_)))
                   (let ((_hd542566_ (##car _e541562_))
                         (_tl543569_ (##cdr _e541562_)))
                     (if (gx#stx-pair? _tl543569_)
                         (let ((_e544572_ (gx#syntax-e _tl543569_)))
                           (let ((_hd545576_ (##car _e544572_))
                                 (_tl546579_ (##cdr _e544572_)))
                             (if (gx#stx-pair? _tl546579_)
                                 (let ((_e547582_ (gx#syntax-e _tl546579_)))
                                   (let ((_hd548586_ (##car _e547582_))
                                         (_tl549589_ (##cdr _e547582_)))
                                     (if (gx#stx-null? _tl549589_)
                                         ((lambda (_L592_ _L594_ _L595_)
                                            (cons _L595_
                                                  (cons _L594_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'syntax)
                            (cons _L592_ '()))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _hd548586_
                                          _hd545576_
                                          _hd542566_)
                                         (_g528555_ _g529559_))))
                                 (_g528555_ _g529559_))))
                         (_g528555_ _g529559_))))
                 (_g528555_ _g529559_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g526655_
                                                   (lambda (_g529617_)
                                                     (if (gx#stx-pair?
                                                          _g529617_)
                                                         (let ((_e532620_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g529617_)))
                   (let ((_hd533624_ (##car _e532620_))
                         (_tl534627_ (##cdr _e532620_)))
                     (if (gx#stx-pair? _tl534627_)
                         (let ((_e535630_ (gx#syntax-e _tl534627_)))
                           (let ((_hd536634_ (##car _e535630_))
                                 (_tl537637_ (##cdr _e535630_)))
                             (if (gx#stx-null? _tl537637_)
                                 ((lambda (_L640_ _L642_)
                                    (cons _L642_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'syntax)
                                                      (cons _L640_ '()))
                                                '())))
                                  _hd536634_
                                  _hd533624_)
                                 (_g527613_ _g529617_))))
                         (_g527613_ _g529617_))))
                 (_g527613_ _g529617_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g526655_ _clause524_)))
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g658661_ _g659664_)
                                                    (cons _g658661_ _g659664_))
                                                  '()
                                                  _L419_)))))
                                     (_g338362_ _g339366_)))
                               _clause356415_
                               _hd346383_))))))
              (_loop351395_ _target348389_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g338362_ _g339366_)))))
                                          (_g338362_ _g339366_))
                                      (_g338362_ _g339366_))))
                              (_g338362_ _g339366_))))
                      (_g338362_ _g339366_)))))
          (_g337667_ _stx335_))))
    (define |gxc[:0:]#symbol-table|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g3026_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g3027_|
                   (cons |gxc[1]#_g3028_|
                         (cons |gxc[1]#_g3029_|
                               (cons (cons |gxc[1]#_g3030_|
                                           (cons |gxc[1]#_g3031_| '()))
                                     (cons (cons |gxc[1]#_g3032_|
                                                 (cons |gxc[1]#_g3033_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gxc#symbol-table::t
        '#f
        'symbol-table
        ':init!
        '()
        '(gensyms bindings))))))
