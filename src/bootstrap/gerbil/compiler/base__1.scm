(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gxc[1]#_g3369_|
    (gx#make-syntax-quote
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g3370_|
    (gx#make-syntax-quote
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g3371_|
    (gx#make-syntax-quote
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g3372_|
    (gx#make-syntax-quote 'symbol-table? #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g3373_|
    (gx#make-syntax-quote
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g3374_|
    (gx#make-syntax-quote
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g3375_|
    (gx#make-syntax-quote
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g3376_|
    (gx#make-syntax-quote
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx389_)
        (gx#macro-expand-syntax-case _stx389_ 'stx-eq? 'stx-e 'quote)))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx392_)
        (let* ((_g395419_
                (lambda (_g396415_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g396415_)))
               (_g394723_
                (lambda (_g396423_)
                  (if (gx#stx-pair? _g396423_)
                      (let ((_e399426_ (gx#syntax-e _g396423_)))
                        (let ((_hd400430_ (##car _e399426_))
                              (_tl401433_ (##cdr _e399426_)))
                          (if (gx#stx-pair? _tl401433_)
                              (let ((_e402436_ (gx#syntax-e _tl401433_)))
                                (let ((_hd403440_ (##car _e402436_))
                                      (_tl404443_ (##cdr _e402436_)))
                                  (if (gx#stx-pair/null? _tl404443_)
                                      (if (fx>= (gx#stx-length _tl404443_) '0)
                                          (let ((_g3365_ (gx#syntax-split-splice
                                                          _tl404443_
                                                          '0)))
                                            (begin
                                              (let ((_g3366_ (values-count
                                                              _g3365_)))
                                                (if (not (fx= _g3366_ 2))
                                                    (error "Context expects 2 values"
                                                           _g3366_)))
                                              (let ((_target405446_
                                                     (values-ref _g3365_ 0))
                                                    (_tl407449_
                                                     (values-ref _g3365_ 1)))
                                                (if (gx#stx-null? _tl407449_)
                                                    (letrec ((_loop408452_
                                                              (lambda (_hd406456_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause412459_)
                        (if (gx#stx-pair? _hd406456_)
                            (let ((_e409462_ (gx#syntax-e _hd406456_)))
                              (let ((_lp-hd410466_ (##car _e409462_))
                                    (_lp-tl411469_ (##cdr _e409462_)))
                                (_loop408452_
                                 _lp-tl411469_
                                 (cons _lp-hd410466_ _clause412459_))))
                            (let ((_clause413472_ (reverse _clause412459_)))
                              ((lambda (_L476_ _L478_)
                                 (if (gx#identifier-list? _L478_)
                                     (let* ((_g498515_
                                             (lambda (_g499511_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g499511_)))
                                            (_g497576_
                                             (lambda (_g499519_)
                                               (if (gx#stx-pair/null?
                                                    _g499519_)
                                                   (if (fx>= (gx#stx-length
                                                              _g499519_)
                                                             '0)
                                                       (let ((_g3367_ (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g499519_
                               '0)))
                 (begin
                   (let ((_g3368_ (values-count _g3367_)))
                     (if (not (fx= _g3368_ 2))
                         (error "Context expects 2 values" _g3368_)))
                   (let ((_target501522_ (values-ref _g3367_ 0))
                         (_tl503525_ (values-ref _g3367_ 1)))
                     (if (gx#stx-null? _tl503525_)
                         (letrec ((_loop504528_
                                   (lambda (_hd502532_ _clause508535_)
                                     (if (gx#stx-pair? _hd502532_)
                                         (let ((_e505538_
                                                (gx#syntax-e _hd502532_)))
                                           (let ((_lp-hd506542_
                                                  (##car _e505538_))
                                                 (_lp-tl507545_
                                                  (##cdr _e505538_)))
                                             (_loop504528_
                                              _lp-tl507545_
                                              (cons _lp-hd506542_
                                                    _clause508535_))))
                                         (let ((_clause509548_
                                                (reverse _clause508535_)))
                                           ((lambda (_L552_)
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
                                      (cons _L478_
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g567570_
                                                              _g568573_)
                                                       (cons _g567570_
                                                             _g568573_))
                                                     '()
                                                     _L552_)))))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _clause509548_))))))
                           (_loop504528_ _target501522_ '()))
                         (_g498515_ _g499519_)))))
               (_g498515_ _g499519_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g498515_ _g499519_)))))
                                       (_g497576_
                                        (gx#stx-map
                                         (lambda (_clause580_)
                                           (let* ((_g584611_
                                                   (lambda (_g585607_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g585607_)))
                                                  (_g583669_
                                                   (lambda (_g585615_)
                                                     (if (gx#stx-pair?
                                                          _g585615_)
                                                         (let ((_e597618_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g585615_)))
                   (let ((_hd598622_ (##car _e597618_))
                         (_tl599625_ (##cdr _e597618_)))
                     (if (gx#stx-pair? _tl599625_)
                         (let ((_e600628_ (gx#syntax-e _tl599625_)))
                           (let ((_hd601632_ (##car _e600628_))
                                 (_tl602635_ (##cdr _e600628_)))
                             (if (gx#stx-pair? _tl602635_)
                                 (let ((_e603638_ (gx#syntax-e _tl602635_)))
                                   (let ((_hd604642_ (##car _e603638_))
                                         (_tl605645_ (##cdr _e603638_)))
                                     (if (gx#stx-null? _tl605645_)
                                         ((lambda (_L648_ _L650_ _L651_)
                                            (cons _L651_
                                                  (cons _L650_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'syntax)
                            (cons _L648_ '()))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _hd604642_
                                          _hd601632_
                                          _hd598622_)
                                         (_g584611_ _g585615_))))
                                 (_g584611_ _g585615_))))
                         (_g584611_ _g585615_))))
                 (_g584611_ _g585615_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g582711_
                                                   (lambda (_g585673_)
                                                     (if (gx#stx-pair?
                                                          _g585673_)
                                                         (let ((_e588676_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g585673_)))
                   (let ((_hd589680_ (##car _e588676_))
                         (_tl590683_ (##cdr _e588676_)))
                     (if (gx#stx-pair? _tl590683_)
                         (let ((_e591686_ (gx#syntax-e _tl590683_)))
                           (let ((_hd592690_ (##car _e591686_))
                                 (_tl593693_ (##cdr _e591686_)))
                             (if (gx#stx-null? _tl593693_)
                                 ((lambda (_L696_ _L698_)
                                    (cons _L698_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'syntax)
                                                      (cons _L696_ '()))
                                                '())))
                                  _hd592690_
                                  _hd589680_)
                                 (_g583669_ _g585673_))))
                         (_g583669_ _g585673_))))
                 (_g583669_ _g585673_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g582711_ _clause580_)))
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g714717_ _g715720_)
                                                    (cons _g714717_ _g715720_))
                                                  '()
                                                  _L476_)))))
                                     (_g395419_ _g396423_)))
                               _clause413472_
                               _hd403440_))))))
              (_loop408452_ _target405446_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g395419_ _g396423_)))))
                                          (_g395419_ _g396423_))
                                      (_g395419_ _g396423_))))
                              (_g395419_ _g396423_))))
                      (_g395419_ _g396423_)))))
          (_g394723_ _stx392_))))
    (define |gxc[:0:]#symbol-table|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g3369_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g3370_|
                   (cons |gxc[1]#_g3371_|
                         (cons |gxc[1]#_g3372_|
                               (cons (cons |gxc[1]#_g3373_|
                                           (cons |gxc[1]#_g3374_| '()))
                                     (cons (cons |gxc[1]#_g3375_|
                                                 (cons |gxc[1]#_g3376_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gxc#symbol-table::t
        '#f
        'symbol-table
        ':init!
        '()
        '(gensyms bindings))))))
