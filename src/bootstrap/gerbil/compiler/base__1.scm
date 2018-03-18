(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gxc[1]#_g3388_|
    (gx#make-syntax-quote
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g3389_|
    (gx#make-syntax-quote
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g3390_|
    (gx#make-syntax-quote
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g3391_|
    (gx#make-syntax-quote 'symbol-table? #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g3392_|
    (gx#make-syntax-quote
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g3393_|
    (gx#make-syntax-quote
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g3394_|
    (gx#make-syntax-quote
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g3395_|
    (gx#make-syntax-quote
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx390_)
        (gx#macro-expand-syntax-case _stx390_ 'stx-eq? 'stx-e 'quote)))
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
                                      (if (fx>= (gx#stx-length _tl405444_) '0)
                                          (let ((_g3384_ (gx#syntax-split-splice
                                                          _tl405444_
                                                          '0)))
                                            (begin
                                              (let ((_g3385_ (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g3384_)
                         (##vector-length _g3384_)
                         1)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (not (##fx= _g3385_ 2))
                                                    (error "Context expects 2 values"
                                                           _g3385_)))
                                              (let ((_target406447_
                                                     (##vector-ref _g3384_ 0))
                                                    (_tl408450_
                                                     (##vector-ref _g3384_ 1)))
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
                                               (if (gx#stx-pair/null?
                                                    _g500520_)
                                                   (if (fx>= (gx#stx-length
                                                              _g500520_)
                                                             '0)
                                                       (let ((_g3386_ (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g500520_
                               '0)))
                 (begin
                   (let ((_g3387_ (if (##values? _g3386_)
                                      (##vector-length _g3386_)
                                      1)))
                     (if (not (##fx= _g3387_ 2))
                         (error "Context expects 2 values" _g3387_)))
                   (let ((_target502523_ (##vector-ref _g3386_ 0))
                         (_tl504526_ (##vector-ref _g3386_ 1)))
                     (if (gx#stx-null? _tl504526_)
                         (letrec ((_loop505529_
                                   (lambda (_hd503533_ _clause509536_)
                                     (if (gx#stx-pair? _hd503533_)
                                         (let ((_e506539_
                                                (gx#syntax-e _hd503533_)))
                                           (let ((_lp-hd507543_
                                                  (##car _e506539_))
                                                 (_lp-tl508546_
                                                  (##cdr _e506539_)))
                                             (_loop505529_
                                              _lp-tl508546_
                                              (cons _lp-hd507543_
                                                    _clause509536_))))
                                         (let ((_clause510549_
                                                (reverse _clause509536_)))
                                           ((lambda (_L553_)
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
                                      (cons _L479_
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g568571_
                                                              _g569574_)
                                                       (cons _g568571_
                                                             _g569574_))
                                                     '()
                                                     _L553_)))))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _clause510549_))))))
                           (_loop505529_ _target502523_ '()))
                         (_g499516_ _g500520_)))))
               (_g499516_ _g500520_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g499516_ _g500520_)))))
                                       (_g498577_
                                        (gx#stx-map
                                         (lambda (_clause581_)
                                           (let* ((_g585612_
                                                   (lambda (_g586608_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g586608_)))
                                                  (_g584670_
                                                   (lambda (_g586616_)
                                                     (if (gx#stx-pair?
                                                          _g586616_)
                                                         (let ((_e598619_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g586616_)))
                   (let ((_hd599623_ (##car _e598619_))
                         (_tl600626_ (##cdr _e598619_)))
                     (if (gx#stx-pair? _tl600626_)
                         (let ((_e601629_ (gx#syntax-e _tl600626_)))
                           (let ((_hd602633_ (##car _e601629_))
                                 (_tl603636_ (##cdr _e601629_)))
                             (if (gx#stx-pair? _tl603636_)
                                 (let ((_e604639_ (gx#syntax-e _tl603636_)))
                                   (let ((_hd605643_ (##car _e604639_))
                                         (_tl606646_ (##cdr _e604639_)))
                                     (if (gx#stx-null? _tl606646_)
                                         ((lambda (_L649_ _L651_ _L652_)
                                            (cons _L652_
                                                  (cons _L651_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'syntax)
                            (cons _L649_ '()))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _hd605643_
                                          _hd602633_
                                          _hd599623_)
                                         (_g585612_ _g586616_))))
                                 (_g585612_ _g586616_))))
                         (_g585612_ _g586616_))))
                 (_g585612_ _g586616_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g583712_
                                                   (lambda (_g586674_)
                                                     (if (gx#stx-pair?
                                                          _g586674_)
                                                         (let ((_e589677_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g586674_)))
                   (let ((_hd590681_ (##car _e589677_))
                         (_tl591684_ (##cdr _e589677_)))
                     (if (gx#stx-pair? _tl591684_)
                         (let ((_e592687_ (gx#syntax-e _tl591684_)))
                           (let ((_hd593691_ (##car _e592687_))
                                 (_tl594694_ (##cdr _e592687_)))
                             (if (gx#stx-null? _tl594694_)
                                 ((lambda (_L697_ _L699_)
                                    (cons _L699_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'syntax)
                                                      (cons _L697_ '()))
                                                '())))
                                  _hd593691_
                                  _hd590681_)
                                 (_g584670_ _g586674_))))
                         (_g584670_ _g586674_))))
                 (_g584670_ _g586674_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g583712_ _clause581_)))
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g715718_ _g716721_)
                                                    (cons _g715718_ _g716721_))
                                                  '()
                                                  _L477_)))))
                                     (_g396420_ _g397424_)))
                               _clause414473_
                               _hd404441_))))))
              (_loop409453_ _target406447_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g396420_ _g397424_)))))
                                          (_g396420_ _g397424_))
                                      (_g396420_ _g397424_))))
                              (_g396420_ _g397424_))))
                      (_g396420_ _g397424_)))))
          (_g395724_ _stx393_))))
    (define |gxc[:0:]#symbol-table|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g3388_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g3389_|
                   (cons |gxc[1]#_g3390_|
                         (cons |gxc[1]#_g3391_|
                               (cons (cons |gxc[1]#_g3392_|
                                           (cons |gxc[1]#_g3393_| '()))
                                     (cons (cons |gxc[1]#_g3394_|
                                                 (cons |gxc[1]#_g3395_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gxc#symbol-table::t
        '#f
        'symbol-table
        ':init!
        '()
        '(gensyms bindings))))))
