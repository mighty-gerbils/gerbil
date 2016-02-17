(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gxc[1]#_g46543_| (gx#core-quote-syntax 'symbol-table::t))
  (define |gxc[1]#_g46544_| (gx#core-quote-syntax 'symbol-table::t))
  (define |gxc[1]#_g46545_| (gx#core-quote-syntax 'make-symbol-table))
  (define |gxc[1]#_g46546_| (gx#core-quote-syntax 'symbol-table?))
  (define |gxc[1]#_g46547_| (gx#core-quote-syntax 'symbol-table-gensyms))
  (define |gxc[1]#_g46548_| (gx#core-quote-syntax 'symbol-table-bindings))
  (define |gxc[1]#_g46549_| (gx#core-quote-syntax 'symbol-table-gensyms-set!))
  (define |gxc[1]#_g46550_| (gx#core-quote-syntax 'symbol-table-bindings-set!))
  (define |gxc[1]#_g46555_| (gx#core-quote-syntax 'meta-state::t))
  (define |gxc[1]#_g46556_| (gx#core-quote-syntax 'meta-state::t))
  (define |gxc[1]#_g46557_| (gx#core-quote-syntax 'make-meta-state))
  (define |gxc[1]#_g46558_| (gx#core-quote-syntax 'meta-state?))
  (define |gxc[1]#_g46559_| (gx#core-quote-syntax 'meta-state-src))
  (define |gxc[1]#_g46560_| (gx#core-quote-syntax 'meta-state-n))
  (define |gxc[1]#_g46561_| (gx#core-quote-syntax 'meta-state-open))
  (define |gxc[1]#_g46562_| (gx#core-quote-syntax 'meta-state-blocks))
  (define |gxc[1]#_g46563_| (gx#core-quote-syntax 'meta-state-src-set!))
  (define |gxc[1]#_g46564_| (gx#core-quote-syntax 'meta-state-n-set!))
  (define |gxc[1]#_g46565_| (gx#core-quote-syntax 'meta-state-open-set!))
  (define |gxc[1]#_g46566_| (gx#core-quote-syntax 'meta-state-blocks-set!))
  (define |gxc[1]#_g46567_| (gx#core-quote-syntax 'meta-state-block::t))
  (define |gxc[1]#_g46568_| (gx#core-quote-syntax 'meta-state-block::t))
  (define |gxc[1]#_g46569_| (gx#core-quote-syntax 'make-meta-state-block))
  (define |gxc[1]#_g46570_| (gx#core-quote-syntax 'meta-state-block?))
  (define |gxc[1]#_g46571_| (gx#core-quote-syntax 'meta-state-block-ctx))
  (define |gxc[1]#_g46572_| (gx#core-quote-syntax 'meta-state-block-phi))
  (define |gxc[1]#_g46573_| (gx#core-quote-syntax 'meta-state-block-n))
  (define |gxc[1]#_g46574_| (gx#core-quote-syntax 'meta-state-block-code))
  (define |gxc[1]#_g46575_| (gx#core-quote-syntax 'meta-state-block-ctx-set!))
  (define |gxc[1]#_g46576_| (gx#core-quote-syntax 'meta-state-block-phi-set!))
  (define |gxc[1]#_g46577_| (gx#core-quote-syntax 'meta-state-block-n-set!))
  (define |gxc[1]#_g46578_| (gx#core-quote-syntax 'meta-state-block-code-set!))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx40619_)
        (gx#macro-expand-syntax-case _stx40619_ 'stx-eq? 'stx-e 'quote)))
    (define |gxc[:0:]#symbol-table|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g46543_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g46544_|
                   (cons |gxc[1]#_g46545_|
                         (cons |gxc[1]#_g46546_|
                               (cons (cons |gxc[1]#_g46547_|
                                           (cons |gxc[1]#_g46548_| '()))
                                     (cons (cons |gxc[1]#_g46549_|
                                                 (cons |gxc[1]#_g46550_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gxc#symbol-table::t
        '#f
        'symbol-table
        ':init!
        '()
        '(gensyms bindings))))
    (define |gxc[:0:]#defcompile-method|
      (lambda (_$stx40622_)
        (let ((_g4062840707_
               (lambda (_g4062940703_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g4062940703_))))
          (let ((_g4062740781_
                 (lambda (_g4062940711_)
                   (if (gx#stx-pair? _g4062940711_)
                       (let ((_e4069040714_ (gx#syntax-e _g4062940711_)))
                         (let ((_hd4069140718_ (##car _e4069040714_))
                               (_tl4069240721_ (##cdr _e4069040714_)))
                           (if (gx#stx-pair? _tl4069240721_)
                               (let ((_e4069340724_
                                      (gx#syntax-e _tl4069240721_)))
                                 (let ((_hd4069440728_ (##car _e4069340724_))
                                       (_tl4069540731_ (##cdr _e4069340724_)))
                                   (if (gx#stx-pair? _tl4069540731_)
                                       (let ((_e4069640734_
                                              (gx#syntax-e _tl4069540731_)))
                                         (let ((_hd4069740738_
                                                (##car _e4069640734_))
                                               (_tl4069840741_
                                                (##cdr _e4069640734_)))
                                           (if (gx#stx-pair? _hd4069740738_)
                                               (let ((_e4069940744_
                                                      (gx#syntax-e
                                                       _hd4069740738_)))
                                                 (let ((_hd4070040748_
                                                        (##car _e4069940744_))
                                                       (_tl4070140751_
                                                        (##cdr _e4069940744_)))
                                                   ((lambda (_L40754_
                                                             _L40756_
                                                             _L40757_
                                                             _L40758_
                                                             _L40759_)
                                                      (if (gx#identifier?
                                                           _L40758_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin)
                        (cons (cons _L40759_
                                    (cons '#f
                                          (cons (cons _L40757_ _L40756_)
                                                _L40754_)))
                              (cons (cons (gx#datum->syntax '#f 'define)
                                          (cons (cons _L40758_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'stx)
                                                            (gx#datum->syntax
                                                             '#f
                                                             'args)))
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'parameterize)
                                                            (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '#f
                                       'current-compile-methods)
                                      (cons (cons (gx#datum->syntax '#f 'force)
                                                  (cons _L40757_ '()))
                                            '()))
                                '())
                          (cons (cons (gx#datum->syntax '#f 'apply)
                                      (cons (gx#datum->syntax '#f 'compile-e)
                                            (cons (gx#datum->syntax '#f 'stx)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'args)
                                                        '()))))
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  (_g4062840707_ _g4062940711_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl4069840741_
                                                    _tl4070140751_
                                                    _hd4070040748_
                                                    _hd4069440728_
                                                    _hd4069140718_)))
                                               (_g4062840707_ _g4062940711_))))
                                       (_g4062840707_ _g4062940711_))))
                               (_g4062840707_ _g4062940711_))))
                       (_g4062840707_ _g4062940711_)))))
            (let ((_g4062640962_
                   (lambda (_g4062940785_)
                     (if (gx#stx-pair? _g4062940785_)
                         (let ((_e4064740788_ (gx#syntax-e _g4062940785_)))
                           (let ((_hd4064840792_ (##car _e4064740788_))
                                 (_tl4064940795_ (##cdr _e4064740788_)))
                             (if (gx#stx-pair? _tl4064940795_)
                                 (let ((_e4065040798_
                                        (gx#syntax-e _tl4064940795_)))
                                   (let ((_hd4065140802_ (##car _e4065040798_))
                                         (_tl4065240805_
                                          (##cdr _e4065040798_)))
                                     (if (gx#stx-datum? _hd4065140802_)
                                         (if (equal? (gx#stx-e _hd4065140802_)
                                                     '#f)
                                             (if (gx#stx-pair? _tl4065240805_)
                                                 (let ((_e4065340808_
                                                        (gx#syntax-e
                                                         _tl4065240805_)))
                                                   (let ((_hd4065440812_
                                                          (##car _e4065340808_))
                                                         (_tl4065540815_
                                                          (##cdr _e4065340808_)))
                                                     (if (gx#stx-pair?
                                                          _hd4065440812_)
                                                         (let ((_e4065640818_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd4065440812_)))
                   (let ((_hd4065740822_ (##car _e4065640818_))
                         (_tl4065840825_ (##cdr _e4065640818_)))
                     (if (gx#stx-pair/null? _tl4065840825_)
                         (if (fx>= (gx#stx-length _tl4065840825_) '0)
                             (let ((_g46551_
                                    (gx#syntax-split-splice
                                     _tl4065840825_
                                     '0)))
                               (begin
                                 (let ((_g46552_ (values-count _g46551_)))
                                   (if (not (fx= _g46552_ 2))
                                       (error "Context expects 2 values"
                                              _g46552_)))
                                 (let ((_target4065940828_
                                        (values-ref _g46551_ 0))
                                       (_tl4066140831_
                                        (values-ref _g46551_ 1)))
                                   (if (gx#stx-null? _tl4066140831_)
                                       (letrec ((_loop4066240834_
                                                 (lambda (_hd4066040838_
                                                          _super4066640841_)
                                                   (if (gx#stx-pair?
                                                        _hd4066040838_)
                                                       (let ((_e4066340844_
                                                              (gx#syntax-e
                                                               _hd4066040838_)))
                                                         (let ((_lp-hd4066440848_
                                                                (##car _e4066340844_))
                                                               (_lp-tl4066540851_
                                                                (##cdr _e4066340844_)))
                                                           (_loop4066240834_
                                                            _lp-tl4066540851_
                                                            (cons _lp-hd4066440848_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _super4066640841_))))
               (let ((_super4066740854_ (reverse _super4066640841_)))
                 (if (gx#stx-pair/null? _tl4065540815_)
                     (if (fx>= (gx#stx-length _tl4065540815_) '0)
                         (let ((_g46553_
                                (gx#syntax-split-splice _tl4065540815_ '0)))
                           (begin
                             (let ((_g46554_ (values-count _g46553_)))
                               (if (not (fx= _g46554_ 2))
                                   (error "Context expects 2 values"
                                          _g46554_)))
                             (let ((_target4066840858_ (values-ref _g46553_ 0))
                                   (_tl4067040861_ (values-ref _g46553_ 1)))
                               (if (gx#stx-null? _tl4067040861_)
                                   (letrec ((_loop4067140864_
                                             (lambda (_hd4066940868_
                                                      _method4067540871_
                                                      _symbol4067640873_)
                                               (if (gx#stx-pair?
                                                    _hd4066940868_)
                                                   (let ((_e4067240876_
                                                          (gx#syntax-e
                                                           _hd4066940868_)))
                                                     (let ((_lp-hd4067340880_
                                                            (##car _e4067240876_))
                                                           (_lp-tl4067440883_
                                                            (##cdr _e4067240876_)))
                                                       (if (gx#stx-pair?
                                                            _lp-hd4067340880_)
                                                           (let ((_e4067940886_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _lp-hd4067340880_)))
                     (let ((_hd4068040890_ (##car _e4067940886_))
                           (_tl4068140893_ (##cdr _e4067940886_)))
                       (if (gx#stx-pair? _tl4068140893_)
                           (let ((_e4068240896_ (gx#syntax-e _tl4068140893_)))
                             (let ((_hd4068340900_ (##car _e4068240896_))
                                   (_tl4068440903_ (##cdr _e4068240896_)))
                               (if (gx#stx-null? _tl4068440903_)
                                   (_loop4067140864_
                                    _lp-tl4067440883_
                                    (cons _hd4068340900_ _method4067540871_)
                                    (cons _hd4068040890_ _symbol4067640873_))
                                   (_g4062740781_ _g4062940785_))))
                           (_g4062740781_ _g4062940785_))))
                   (_g4062740781_ _g4062940785_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_method4067740906_
                                                          (reverse _method4067540871_))
                                                         (_symbol4067840909_
                                                          (reverse _symbol4067640873_)))
                                                     ((lambda (_L40912_
                                                               _L40914_
                                                               _L40915_
                                                               _L40916_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'define)
                                                              (cons _L40916_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'delay)
                                        (cons (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'tbl)
                        (cons (cons (gx#datum->syntax '#f 'make-hash-table-eq)
                                    '())
                              '()))
                  (begin
                    '#!void
                    (foldr (lambda (_g4094240948_ _g4094340951_)
                             (cons (cons (gx#datum->syntax '#f 'hash-copy!)
                                         (cons (gx#datum->syntax '#f 'tbl)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'force)
                                                           (cons _g4094240948_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   _g4094340951_))
                           (begin
                             (gx#syntax-check-splice-targets _L40912_ _L40914_)
                             (foldr (lambda (_g4094440954_
                                             _g4094540957_
                                             _g4094640959_)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'hash-put!)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'tbl)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons _g4094540957_ '()))
                      (cons _g4094440954_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g4094640959_))
                                    (cons (gx#datum->syntax '#f 'tbl) '())
                                    _L40912_
                                    _L40914_))
                           _L40915_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  '()))))
              _method4067740906_
              _symbol4067840909_
              _super4066740854_
              _hd4065740822_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop4067140864_
                                      _target4066840858_
                                      '()
                                      '()))
                                   (_g4062740781_ _g4062940785_)))))
                         (_g4062740781_ _g4062940785_))
                     (_g4062740781_ _g4062940785_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop4066240834_
                                          _target4065940828_
                                          '()))
                                       (_g4062740781_ _g4062940785_)))))
                             (_g4062740781_ _g4062940785_))
                         (_g4062740781_ _g4062940785_))))
                 (_g4062740781_ _g4062940785_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g4062740781_ _g4062940785_))
                                             (_g4062740781_ _g4062940785_))
                                         (_g4062740781_ _g4062940785_))))
                                 (_g4062740781_ _g4062940785_))))
                         (_g4062740781_ _g4062940785_)))))
              (let ((_g4062541020_
                     (lambda (_g4062940966_)
                       (if (gx#stx-pair? _g4062940966_)
                           (let ((_e4063440969_ (gx#syntax-e _g4062940966_)))
                             (let ((_hd4063540973_ (##car _e4063440969_))
                                   (_tl4063640976_ (##cdr _e4063440969_)))
                               (if (gx#stx-pair? _tl4063640976_)
                                   (let ((_e4063740979_
                                          (gx#syntax-e _tl4063640976_)))
                                     (let ((_hd4063840983_
                                            (##car _e4063740979_))
                                           (_tl4063940986_
                                            (##cdr _e4063740979_)))
                                       (if (gx#stx-pair? _tl4063940986_)
                                           (let ((_e4064040989_
                                                  (gx#syntax-e
                                                   _tl4063940986_)))
                                             (let ((_hd4064140993_
                                                    (##car _e4064040989_))
                                                   (_tl4064240996_
                                                    (##cdr _e4064040989_)))
                                               ((lambda (_L40999_
                                                         _L41001_
                                                         _L41002_
                                                         _L41003_)
                                                  (if (gx#identifier? _L41001_)
                                                      (cons _L41003_
                                                            (cons _L41002_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _L41001_ '()) _L40999_)))
              (_g4062640962_ _g4062940966_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl4064240996_
                                                _hd4064140993_
                                                _hd4063840983_
                                                _hd4063540973_)))
                                           (_g4062640962_ _g4062940966_))))
                                   (_g4062640962_ _g4062940966_))))
                           (_g4062640962_ _g4062940966_)))))
                (_g4062541020_ _$stx40622_)))))))
    (define |gxc[:0:]#meta-state|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g46555_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g46556_|
                   (cons |gxc[1]#_g46557_|
                         (cons |gxc[1]#_g46558_|
                               (cons (cons |gxc[1]#_g46559_|
                                           (cons |gxc[1]#_g46560_|
                                                 (cons |gxc[1]#_g46561_|
                                                       (cons |gxc[1]#_g46562_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g46563_|
                                                 (cons |gxc[1]#_g46564_|
                                                       (cons |gxc[1]#_g46565_|
                                                             (cons |gxc[1]#_g46566_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gxc#meta-state::t
        '#f
        'meta-state
        ':init!
        '()
        '(src n open blocks))))
    (define |gxc[:0:]#meta-state-block|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g46567_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g46568_|
                   (cons |gxc[1]#_g46569_|
                         (cons |gxc[1]#_g46570_|
                               (cons (cons |gxc[1]#_g46571_|
                                           (cons |gxc[1]#_g46572_|
                                                 (cons |gxc[1]#_g46573_|
                                                       (cons |gxc[1]#_g46574_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g46575_|
                                                 (cons |gxc[1]#_g46576_|
                                                       (cons |gxc[1]#_g46577_|
                                                             (cons |gxc[1]#_g46578_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gxc#meta-state-block::t
        '#f
        'meta-state-block
        '#f
        '()
        '(ctx phi n code))))))
