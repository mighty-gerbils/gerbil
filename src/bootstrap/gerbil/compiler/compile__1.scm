(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gxc[1]#_g5885_| (gx#core-quote-syntax 'meta-state::t))
  (define |gxc[1]#_g5886_| (gx#core-quote-syntax 'meta-state::t))
  (define |gxc[1]#_g5887_| (gx#core-quote-syntax 'make-meta-state))
  (define |gxc[1]#_g5888_| (gx#core-quote-syntax 'meta-state?))
  (define |gxc[1]#_g5889_| (gx#core-quote-syntax 'meta-state-src))
  (define |gxc[1]#_g5890_| (gx#core-quote-syntax 'meta-state-n))
  (define |gxc[1]#_g5891_| (gx#core-quote-syntax 'meta-state-open))
  (define |gxc[1]#_g5892_| (gx#core-quote-syntax 'meta-state-blocks))
  (define |gxc[1]#_g5893_| (gx#core-quote-syntax 'meta-state-src-set!))
  (define |gxc[1]#_g5894_| (gx#core-quote-syntax 'meta-state-n-set!))
  (define |gxc[1]#_g5895_| (gx#core-quote-syntax 'meta-state-open-set!))
  (define |gxc[1]#_g5896_| (gx#core-quote-syntax 'meta-state-blocks-set!))
  (define |gxc[1]#_g5897_| (gx#core-quote-syntax 'meta-state-block::t))
  (define |gxc[1]#_g5898_| (gx#core-quote-syntax 'meta-state-block::t))
  (define |gxc[1]#_g5899_| (gx#core-quote-syntax 'make-meta-state-block))
  (define |gxc[1]#_g5900_| (gx#core-quote-syntax 'meta-state-block?))
  (define |gxc[1]#_g5901_| (gx#core-quote-syntax 'meta-state-block-ctx))
  (define |gxc[1]#_g5902_| (gx#core-quote-syntax 'meta-state-block-phi))
  (define |gxc[1]#_g5903_| (gx#core-quote-syntax 'meta-state-block-n))
  (define |gxc[1]#_g5904_| (gx#core-quote-syntax 'meta-state-block-code))
  (define |gxc[1]#_g5905_| (gx#core-quote-syntax 'meta-state-block-ctx-set!))
  (define |gxc[1]#_g5906_| (gx#core-quote-syntax 'meta-state-block-phi-set!))
  (define |gxc[1]#_g5907_| (gx#core-quote-syntax 'meta-state-block-n-set!))
  (define |gxc[1]#_g5908_| (gx#core-quote-syntax 'meta-state-block-code-set!))
  (begin
    (define |gxc[:0:]#defcompile-method|
      (lambda (_$stx194_)
        (let ((_g200279_
               (lambda (_g201275_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g201275_))))
          (let ((_g199355_
                 (lambda (_g201283_)
                   (if (gx#stx-pair? _g201283_)
                       (let ((_e262286_ (gx#syntax-e _g201283_)))
                         (let ((_hd263290_ (##car _e262286_))
                               (_tl264293_ (##cdr _e262286_)))
                           (if (gx#stx-pair? _tl264293_)
                               (let ((_e265296_ (gx#syntax-e _tl264293_)))
                                 (let ((_hd266300_ (##car _e265296_))
                                       (_tl267303_ (##cdr _e265296_)))
                                   (if (gx#stx-pair? _tl267303_)
                                       (let ((_e268306_
                                              (gx#syntax-e _tl267303_)))
                                         (let ((_hd269310_ (##car _e268306_))
                                               (_tl270313_ (##cdr _e268306_)))
                                           (if (gx#stx-pair? _hd269310_)
                                               (let ((_e271316_
                                                      (gx#syntax-e
                                                       _hd269310_)))
                                                 (let ((_hd272320_
                                                        (##car _e271316_))
                                                       (_tl273323_
                                                        (##cdr _e271316_)))
                                                   ((lambda (_L326_
                                                             _L328_
                                                             _L329_
                                                             _L330_
                                                             _L331_)
                                                      (if (gx#identifier?
                                                           _L330_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin)
                        (cons (cons _L331_
                                    (cons '#f
                                          (cons (cons _L329_ _L328_) _L326_)))
                              (cons (cons (gx#datum->syntax '#f 'define)
                                          (cons (cons _L330_
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
                                                  (cons _L329_ '()))
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
                  (_g200279_ _g201283_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl270313_
                                                    _tl273323_
                                                    _hd272320_
                                                    _hd266300_
                                                    _hd263290_)))
                                               (_g200279_ _g201283_))))
                                       (_g200279_ _g201283_))))
                               (_g200279_ _g201283_))))
                       (_g200279_ _g201283_)))))
            (let ((_g198536_
                   (lambda (_g201359_)
                     (if (gx#stx-pair? _g201359_)
                         (let ((_e219362_ (gx#syntax-e _g201359_)))
                           (let ((_hd220366_ (##car _e219362_))
                                 (_tl221369_ (##cdr _e219362_)))
                             (if (gx#stx-pair? _tl221369_)
                                 (let ((_e222372_ (gx#syntax-e _tl221369_)))
                                   (let ((_hd223376_ (##car _e222372_))
                                         (_tl224379_ (##cdr _e222372_)))
                                     (if (gx#stx-datum? _hd223376_)
                                         (if (equal? (gx#stx-e _hd223376_) '#f)
                                             (if (gx#stx-pair? _tl224379_)
                                                 (let ((_e225382_
                                                        (gx#syntax-e
                                                         _tl224379_)))
                                                   (let ((_hd226386_
                                                          (##car _e225382_))
                                                         (_tl227389_
                                                          (##cdr _e225382_)))
                                                     (if (gx#stx-pair?
                                                          _hd226386_)
                                                         (let ((_e228392_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd226386_)))
                   (let ((_hd229396_ (##car _e228392_))
                         (_tl230399_ (##cdr _e228392_)))
                     (if (gx#stx-pair/null? _tl230399_)
                         (if (fx>= (gx#stx-length _tl230399_) '0)
                             (let ((_g5881_ (gx#syntax-split-splice
                                             _tl230399_
                                             '0)))
                               (begin
                                 (let ((_g5882_ (values-count _g5881_)))
                                   (if (not (fx= _g5882_ 2))
                                       (error "Context expects 2 values"
                                              _g5882_)))
                                 (let ((_target231402_ (values-ref _g5881_ 0))
                                       (_tl233405_ (values-ref _g5881_ 1)))
                                   (if (gx#stx-null? _tl233405_)
                                       (letrec ((_loop234408_
                                                 (lambda (_hd232412_
                                                          _super238415_)
                                                   (if (gx#stx-pair?
                                                        _hd232412_)
                                                       (let ((_e235418_
                                                              (gx#syntax-e
                                                               _hd232412_)))
                                                         (let ((_lp-hd236422_
                                                                (##car _e235418_))
                                                               (_lp-tl237425_
                                                                (##cdr _e235418_)))
                                                           (_loop234408_
                                                            _lp-tl237425_
                                                            (cons _lp-hd236422_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _super238415_))))
               (let ((_super239428_ (reverse _super238415_)))
                 (if (gx#stx-pair/null? _tl227389_)
                     (if (fx>= (gx#stx-length _tl227389_) '0)
                         (let ((_g5883_ (gx#syntax-split-splice
                                         _tl227389_
                                         '0)))
                           (begin
                             (let ((_g5884_ (values-count _g5883_)))
                               (if (not (fx= _g5884_ 2))
                                   (error "Context expects 2 values" _g5884_)))
                             (let ((_target240432_ (values-ref _g5883_ 0))
                                   (_tl242435_ (values-ref _g5883_ 1)))
                               (if (gx#stx-null? _tl242435_)
                                   (letrec ((_loop243438_
                                             (lambda (_hd241442_
                                                      _method247445_
                                                      _symbol248447_)
                                               (if (gx#stx-pair? _hd241442_)
                                                   (let ((_e244450_
                                                          (gx#syntax-e
                                                           _hd241442_)))
                                                     (let ((_lp-hd245454_
                                                            (##car _e244450_))
                                                           (_lp-tl246457_
                                                            (##cdr _e244450_)))
                                                       (if (gx#stx-pair?
                                                            _lp-hd245454_)
                                                           (let ((_e251460_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _lp-hd245454_)))
                     (let ((_hd252464_ (##car _e251460_))
                           (_tl253467_ (##cdr _e251460_)))
                       (if (gx#stx-pair? _tl253467_)
                           (let ((_e254470_ (gx#syntax-e _tl253467_)))
                             (let ((_hd255474_ (##car _e254470_))
                                   (_tl256477_ (##cdr _e254470_)))
                               (if (gx#stx-null? _tl256477_)
                                   (_loop243438_
                                    _lp-tl246457_
                                    (cons _hd255474_ _method247445_)
                                    (cons _hd252464_ _symbol248447_))
                                   (_g199355_ _g201359_))))
                           (_g199355_ _g201359_))))
                   (_g199355_ _g201359_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_method249480_
                                                          (reverse _method247445_))
                                                         (_symbol250483_
                                                          (reverse _symbol248447_)))
                                                     ((lambda (_L486_
                                                               _L488_
                                                               _L489_
                                                               _L490_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'define)
                                                              (cons _L490_
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
                    (foldr (lambda (_g516522_ _g517525_)
                             (cons (cons (gx#datum->syntax '#f 'hash-copy!)
                                         (cons (gx#datum->syntax '#f 'tbl)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'force)
                                                           (cons _g516522_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   _g517525_))
                           (begin
                             (gx#syntax-check-splice-targets _L486_ _L488_)
                             (foldr (lambda (_g518528_ _g519531_ _g520533_)
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
                            (cons _g519531_ '()))
                      (cons _g518528_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g520533_))
                                    (cons (gx#datum->syntax '#f 'tbl) '())
                                    _L486_
                                    _L488_))
                           _L489_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  '()))))
              _method249480_
              _symbol250483_
              _super239428_
              _hd229396_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop243438_ _target240432_ '() '()))
                                   (_g199355_ _g201359_)))))
                         (_g199355_ _g201359_))
                     (_g199355_ _g201359_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop234408_ _target231402_ '()))
                                       (_g199355_ _g201359_)))))
                             (_g199355_ _g201359_))
                         (_g199355_ _g201359_))))
                 (_g199355_ _g201359_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g199355_ _g201359_))
                                             (_g199355_ _g201359_))
                                         (_g199355_ _g201359_))))
                                 (_g199355_ _g201359_))))
                         (_g199355_ _g201359_)))))
              (let ((_g197594_
                     (lambda (_g201540_)
                       (if (gx#stx-pair? _g201540_)
                           (let ((_e206543_ (gx#syntax-e _g201540_)))
                             (let ((_hd207547_ (##car _e206543_))
                                   (_tl208550_ (##cdr _e206543_)))
                               (if (gx#stx-pair? _tl208550_)
                                   (let ((_e209553_ (gx#syntax-e _tl208550_)))
                                     (let ((_hd210557_ (##car _e209553_))
                                           (_tl211560_ (##cdr _e209553_)))
                                       (if (gx#stx-pair? _tl211560_)
                                           (let ((_e212563_
                                                  (gx#syntax-e _tl211560_)))
                                             (let ((_hd213567_
                                                    (##car _e212563_))
                                                   (_tl214570_
                                                    (##cdr _e212563_)))
                                               ((lambda (_L573_
                                                         _L575_
                                                         _L576_
                                                         _L577_)
                                                  (if (gx#identifier? _L575_)
                                                      (cons _L577_
                                                            (cons _L576_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _L575_ '()) _L573_)))
              (_g198536_ _g201540_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl214570_
                                                _hd213567_
                                                _hd210557_
                                                _hd207547_)))
                                           (_g198536_ _g201540_))))
                                   (_g198536_ _g201540_))))
                           (_g198536_ _g201540_)))))
                (_g197594_ _$stx194_)))))))
    (define |gxc[:0:]#meta-state|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g5885_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g5886_|
                   (cons |gxc[1]#_g5887_|
                         (cons |gxc[1]#_g5888_|
                               (cons (cons |gxc[1]#_g5889_|
                                           (cons |gxc[1]#_g5890_|
                                                 (cons |gxc[1]#_g5891_|
                                                       (cons |gxc[1]#_g5892_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g5893_|
                                                 (cons |gxc[1]#_g5894_|
                                                       (cons |gxc[1]#_g5895_|
                                                             (cons |gxc[1]#_g5896_|
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
       |gxc[1]#_g5897_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g5898_|
                   (cons |gxc[1]#_g5899_|
                         (cons |gxc[1]#_g5900_|
                               (cons (cons |gxc[1]#_g5901_|
                                           (cons |gxc[1]#_g5902_|
                                                 (cons |gxc[1]#_g5903_|
                                                       (cons |gxc[1]#_g5904_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g5905_|
                                                 (cons |gxc[1]#_g5906_|
                                                       (cons |gxc[1]#_g5907_|
                                                             (cons |gxc[1]#_g5908_|
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
