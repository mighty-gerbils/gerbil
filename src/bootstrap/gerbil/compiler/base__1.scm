(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gxc[1]#_g3432_|
    (gx#make-syntax-quote
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g3433_|
    (gx#make-syntax-quote
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g3434_|
    (gx#make-syntax-quote
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g3435_|
    (gx#make-syntax-quote 'symbol-table? #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g3436_|
    (gx#make-syntax-quote
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g3437_|
    (gx#make-syntax-quote
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g3438_|
    (gx#make-syntax-quote
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g3439_|
    (gx#make-syntax-quote
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx390_)
        (gx#macro-expand-syntax-case__% _stx390_ 'stx-eq? 'stx-e 'quote)))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx393_)
        (let* ((_g396420_
                (lambda (_g397416_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g397416_)))
               (_g395724_
                (lambda (_g397424_)
                  (if (gx#stx-pair? _g397424_)
                      (let ((_e400427_ (gx#syntax-e _g397424_)))
                        (let ((_hd401431_ (##car _e400427_))
                              (_tl402434_ (##cdr _e400427_)))
                          (if (gx#stx-pair? _tl402434_)
                              (let ((_e403437_ (gx#syntax-e _tl402434_)))
                                (let ((_hd404441_ (##car _e403437_))
                                      (_tl405444_ (##cdr _e403437_)))
                                  (if (gx#stx-pair/null? _tl405444_)
                                      (let ((_g3428_ (gx#syntax-split-splice
                                                      _tl405444_
                                                      '0)))
                                        (begin
                                          (let ((_g3429_ (if (##values?
                                                              _g3428_)
                                                             (##vector-length
                                                              _g3428_)
                                                             1)))
                                            (if (not (##fx= _g3429_ 2))
                                                (error "Context expects 2 values"
                                                       _g3429_)))
                                          (let ((_target406447_
                                                 (##vector-ref _g3428_ 0))
                                                (_tl408450_
                                                 (##vector-ref _g3428_ 1)))
                                            (if (gx#stx-null? _tl408450_)
                                                (letrec ((_loop409453_
                                                          (lambda (_hd407457_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause413460_)
                    (if (gx#stx-pair? _hd407457_)
                        (let ((_e410463_ (gx#syntax-e _hd407457_)))
                          (let ((_lp-hd411467_ (##car _e410463_))
                                (_lp-tl412470_ (##cdr _e410463_)))
                            (_loop409453_
                             _lp-tl412470_
                             (cons _lp-hd411467_ _clause413460_))))
                        (let ((_clause414473_ (reverse _clause413460_)))
                          ((lambda (_L477_ _L479_)
                             (if (gx#identifier-list? _L479_)
                                 (let* ((_g499516_
                                         (lambda (_g500512_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g500512_)))
                                        (_g498577_
                                         (lambda (_g500520_)
                                           (if (gx#stx-pair/null? _g500520_)
                                               (let ((_g3430_ (gx#syntax-split-splice
                                                               _g500520_
                                                               '0)))
                                                 (begin
                                                   (let ((_g3431_ (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g3430_)
                              (##vector-length _g3430_)
                              1)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (##fx= _g3431_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                 (error "Context expects 2 values" _g3431_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target502523_
                                                          (##vector-ref
                                                           _g3430_
                                                           0))
                                                         (_tl504526_
                                                          (##vector-ref
                                                           _g3430_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl504526_)
                                                         (letrec ((_loop505529_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd503533_ _clause509536_)
                             (if (gx#stx-pair? _hd503533_)
                                 (let ((_e506539_ (gx#syntax-e _hd503533_)))
                                   (let ((_lp-hd507543_ (##car _e506539_))
                                         (_lp-tl508546_ (##cdr _e506539_)))
                                     (_loop505529_
                                      _lp-tl508546_
                                      (cons _lp-hd507543_ _clause509536_))))
                                 (let ((_clause510549_
                                        (reverse _clause509536_)))
                                   ((lambda (_L553_)
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
                              (cons _L479_
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g568571_ _g569574_)
                                                (cons _g568571_ _g569574_))
                                              '()
                                              _L553_)))))
                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _clause510549_))))))
                   (_loop505529_ _target502523_ '()))
                 (_g499516_ _g500520_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g499516_ _g500520_)))))
                                   (_g498577_
                                    (gx#stx-map1
                                     (lambda (_clause581_)
                                       (let* ((___stx33853386_ _clause581_)
                                              (_g585612_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  ___stx33853386_))))
                                         (let ((___kont33883389_
                                                (lambda (_L697_ _L699_)
                                                  (cons _L699_
                                                        (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'syntax)
                            (cons _L697_ '()))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont33903391_
                                                (lambda (_L649_ _L651_ _L652_)
                                                  (cons _L652_
                                                        (cons _L651_
                                                              (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'syntax)
                                  (cons _L649_ '()))
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-pair? ___stx33853386_)
                                               (let ((_e589677_
                                                      (gx#syntax-e
                                                       ___stx33853386_)))
                                                 (let ((_tl591684_
                                                        (##cdr _e589677_))
                                                       (_hd590681_
                                                        (##car _e589677_)))
                                                   (if (gx#stx-pair?
                                                        _tl591684_)
                                                       (let ((_e592687_
                                                              (gx#syntax-e
                                                               _tl591684_)))
                                                         (let ((_tl594694_
                                                                (##cdr _e592687_))
                                                               (_hd593691_
                                                                (##car _e592687_)))
                                                           (if (gx#stx-null?
                                                                _tl594694_)
                                                               (___kont33883389_
                                                                _hd593691_
                                                                _hd590681_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl594694_)
                           (let ((_e604639_ (gx#syntax-e _tl594694_)))
                             (let ((_tl606646_ (##cdr _e604639_))
                                   (_hd605643_ (##car _e604639_)))
                               (if (gx#stx-null? _tl606646_)
                                   (___kont33903391_
                                    _hd605643_
                                    _hd593691_
                                    _hd590681_)
                                   (_g585612_))))
                           (_g585612_)))))
               (_g585612_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g585612_)))))
                                     (begin
                                       '#!void
                                       (foldr1 (lambda (_g715718_ _g716721_)
                                                 (cons _g715718_ _g716721_))
                                               '()
                                               _L477_)))))
                                 (_g396420_ _g397424_)))
                           _clause414473_
                           _hd404441_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop409453_
                                                   _target406447_
                                                   '()))
                                                (_g396420_ _g397424_)))))
                                      (_g396420_ _g397424_))))
                              (_g396420_ _g397424_))))
                      (_g396420_ _g397424_)))))
          (_g395724_ _stx393_))))
    (define |gxc[:0:]#symbol-table|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g3432_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g3433_|
                   (cons |gxc[1]#_g3434_|
                         (cons |gxc[1]#_g3435_|
                               (cons (cons |gxc[1]#_g3436_|
                                           (cons |gxc[1]#_g3437_| '()))
                                     (cons (cons |gxc[1]#_g3438_|
                                                 (cons |gxc[1]#_g3439_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gxc#symbol-table::t
        '#f
        'symbol-table
        ':init!
        '()
        '(gensyms bindings))))))
