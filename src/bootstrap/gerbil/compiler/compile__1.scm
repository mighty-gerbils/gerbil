(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gxc[1]#_g6500_| (gx#core-quote-syntax 'meta-state::t))
  (define |gxc[1]#_g6501_| (gx#core-quote-syntax 'meta-state::t))
  (define |gxc[1]#_g6502_| (gx#core-quote-syntax 'make-meta-state))
  (define |gxc[1]#_g6503_| (gx#core-quote-syntax 'meta-state?))
  (define |gxc[1]#_g6504_| (gx#core-quote-syntax 'meta-state-src))
  (define |gxc[1]#_g6505_| (gx#core-quote-syntax 'meta-state-n))
  (define |gxc[1]#_g6506_| (gx#core-quote-syntax 'meta-state-open))
  (define |gxc[1]#_g6507_| (gx#core-quote-syntax 'meta-state-blocks))
  (define |gxc[1]#_g6508_| (gx#core-quote-syntax 'meta-state-src-set!))
  (define |gxc[1]#_g6509_| (gx#core-quote-syntax 'meta-state-n-set!))
  (define |gxc[1]#_g6510_| (gx#core-quote-syntax 'meta-state-open-set!))
  (define |gxc[1]#_g6511_| (gx#core-quote-syntax 'meta-state-blocks-set!))
  (define |gxc[1]#_g6512_| (gx#core-quote-syntax 'meta-state-block::t))
  (define |gxc[1]#_g6513_| (gx#core-quote-syntax 'meta-state-block::t))
  (define |gxc[1]#_g6514_| (gx#core-quote-syntax 'make-meta-state-block))
  (define |gxc[1]#_g6515_| (gx#core-quote-syntax 'meta-state-block?))
  (define |gxc[1]#_g6516_| (gx#core-quote-syntax 'meta-state-block-ctx))
  (define |gxc[1]#_g6517_| (gx#core-quote-syntax 'meta-state-block-phi))
  (define |gxc[1]#_g6518_| (gx#core-quote-syntax 'meta-state-block-n))
  (define |gxc[1]#_g6519_| (gx#core-quote-syntax 'meta-state-block-code))
  (define |gxc[1]#_g6520_| (gx#core-quote-syntax 'meta-state-block-ctx-set!))
  (define |gxc[1]#_g6521_| (gx#core-quote-syntax 'meta-state-block-phi-set!))
  (define |gxc[1]#_g6522_| (gx#core-quote-syntax 'meta-state-block-n-set!))
  (define |gxc[1]#_g6523_| (gx#core-quote-syntax 'meta-state-block-code-set!))
  (begin
    (define |gxc[:0:]#defcompile-method|
      (lambda (_$stx195_)
        (let ((_g201280_
               (lambda (_g202276_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g202276_))))
          (let ((_g200356_
                 (lambda (_g202284_)
                   (if (gx#stx-pair? _g202284_)
                       (let ((_e263287_ (gx#syntax-e _g202284_)))
                         (let ((_hd264291_ (##car _e263287_))
                               (_tl265294_ (##cdr _e263287_)))
                           (if (gx#stx-pair? _tl265294_)
                               (let ((_e266297_ (gx#syntax-e _tl265294_)))
                                 (let ((_hd267301_ (##car _e266297_))
                                       (_tl268304_ (##cdr _e266297_)))
                                   (if (gx#stx-pair? _tl268304_)
                                       (let ((_e269307_
                                              (gx#syntax-e _tl268304_)))
                                         (let ((_hd270311_ (##car _e269307_))
                                               (_tl271314_ (##cdr _e269307_)))
                                           (if (gx#stx-pair? _hd270311_)
                                               (let ((_e272317_
                                                      (gx#syntax-e
                                                       _hd270311_)))
                                                 (let ((_hd273321_
                                                        (##car _e272317_))
                                                       (_tl274324_
                                                        (##cdr _e272317_)))
                                                   ((lambda (_L327_
                                                             _L329_
                                                             _L330_
                                                             _L331_
                                                             _L332_)
                                                      (if (gx#identifier?
                                                           _L331_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin)
                        (cons (cons _L332_
                                    (cons '#f
                                          (cons (cons _L330_ _L329_) _L327_)))
                              (cons (cons (gx#datum->syntax '#f 'define)
                                          (cons (cons _L331_
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
                                                  (cons _L330_ '()))
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
                  (_g201280_ _g202284_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl271314_
                                                    _tl274324_
                                                    _hd273321_
                                                    _hd267301_
                                                    _hd264291_)))
                                               (_g201280_ _g202284_))))
                                       (_g201280_ _g202284_))))
                               (_g201280_ _g202284_))))
                       (_g201280_ _g202284_)))))
            (let ((_g199537_
                   (lambda (_g202360_)
                     (if (gx#stx-pair? _g202360_)
                         (let ((_e220363_ (gx#syntax-e _g202360_)))
                           (let ((_hd221367_ (##car _e220363_))
                                 (_tl222370_ (##cdr _e220363_)))
                             (if (gx#stx-pair? _tl222370_)
                                 (let ((_e223373_ (gx#syntax-e _tl222370_)))
                                   (let ((_hd224377_ (##car _e223373_))
                                         (_tl225380_ (##cdr _e223373_)))
                                     (if (gx#stx-datum? _hd224377_)
                                         (if (equal? (gx#stx-e _hd224377_) '#f)
                                             (if (gx#stx-pair? _tl225380_)
                                                 (let ((_e226383_
                                                        (gx#syntax-e
                                                         _tl225380_)))
                                                   (let ((_hd227387_
                                                          (##car _e226383_))
                                                         (_tl228390_
                                                          (##cdr _e226383_)))
                                                     (if (gx#stx-pair?
                                                          _hd227387_)
                                                         (let ((_e229393_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd227387_)))
                   (let ((_hd230397_ (##car _e229393_))
                         (_tl231400_ (##cdr _e229393_)))
                     (if (gx#stx-pair/null? _tl231400_)
                         (if (fx>= (gx#stx-length _tl231400_) '0)
                             (let ((_g6496_ (gx#syntax-split-splice
                                             _tl231400_
                                             '0)))
                               (begin
                                 (let ((_g6497_ (values-count _g6496_)))
                                   (if (not (fx= _g6497_ 2))
                                       (error "Context expects 2 values"
                                              _g6497_)))
                                 (let ((_target232403_ (values-ref _g6496_ 0))
                                       (_tl234406_ (values-ref _g6496_ 1)))
                                   (if (gx#stx-null? _tl234406_)
                                       (letrec ((_loop235409_
                                                 (lambda (_hd233413_
                                                          _super239416_)
                                                   (if (gx#stx-pair?
                                                        _hd233413_)
                                                       (let ((_e236419_
                                                              (gx#syntax-e
                                                               _hd233413_)))
                                                         (let ((_lp-hd237423_
                                                                (##car _e236419_))
                                                               (_lp-tl238426_
                                                                (##cdr _e236419_)))
                                                           (_loop235409_
                                                            _lp-tl238426_
                                                            (cons _lp-hd237423_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _super239416_))))
               (let ((_super240429_ (reverse _super239416_)))
                 (if (gx#stx-pair/null? _tl228390_)
                     (if (fx>= (gx#stx-length _tl228390_) '0)
                         (let ((_g6498_ (gx#syntax-split-splice
                                         _tl228390_
                                         '0)))
                           (begin
                             (let ((_g6499_ (values-count _g6498_)))
                               (if (not (fx= _g6499_ 2))
                                   (error "Context expects 2 values" _g6499_)))
                             (let ((_target241433_ (values-ref _g6498_ 0))
                                   (_tl243436_ (values-ref _g6498_ 1)))
                               (if (gx#stx-null? _tl243436_)
                                   (letrec ((_loop244439_
                                             (lambda (_hd242443_
                                                      _method248446_
                                                      _symbol249448_)
                                               (if (gx#stx-pair? _hd242443_)
                                                   (let ((_e245451_
                                                          (gx#syntax-e
                                                           _hd242443_)))
                                                     (let ((_lp-hd246455_
                                                            (##car _e245451_))
                                                           (_lp-tl247458_
                                                            (##cdr _e245451_)))
                                                       (if (gx#stx-pair?
                                                            _lp-hd246455_)
                                                           (let ((_e252461_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _lp-hd246455_)))
                     (let ((_hd253465_ (##car _e252461_))
                           (_tl254468_ (##cdr _e252461_)))
                       (if (gx#stx-pair? _tl254468_)
                           (let ((_e255471_ (gx#syntax-e _tl254468_)))
                             (let ((_hd256475_ (##car _e255471_))
                                   (_tl257478_ (##cdr _e255471_)))
                               (if (gx#stx-null? _tl257478_)
                                   (_loop244439_
                                    _lp-tl247458_
                                    (cons _hd256475_ _method248446_)
                                    (cons _hd253465_ _symbol249448_))
                                   (_g200356_ _g202360_))))
                           (_g200356_ _g202360_))))
                   (_g200356_ _g202360_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_method250481_
                                                          (reverse _method248446_))
                                                         (_symbol251484_
                                                          (reverse _symbol249448_)))
                                                     ((lambda (_L487_
                                                               _L489_
                                                               _L490_
                                                               _L491_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'define)
                                                              (cons _L491_
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
                    (foldr (lambda (_g517523_ _g518526_)
                             (cons (cons (gx#datum->syntax '#f 'hash-copy!)
                                         (cons (gx#datum->syntax '#f 'tbl)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'force)
                                                           (cons _g517523_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   _g518526_))
                           (begin
                             (gx#syntax-check-splice-targets _L487_ _L489_)
                             (foldr (lambda (_g519529_ _g520532_ _g521534_)
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
                            (cons _g520532_ '()))
                      (cons _g519529_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g521534_))
                                    (cons (gx#datum->syntax '#f 'tbl) '())
                                    _L487_
                                    _L489_))
                           _L490_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  '()))))
              _method250481_
              _symbol251484_
              _super240429_
              _hd230397_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop244439_ _target241433_ '() '()))
                                   (_g200356_ _g202360_)))))
                         (_g200356_ _g202360_))
                     (_g200356_ _g202360_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop235409_ _target232403_ '()))
                                       (_g200356_ _g202360_)))))
                             (_g200356_ _g202360_))
                         (_g200356_ _g202360_))))
                 (_g200356_ _g202360_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g200356_ _g202360_))
                                             (_g200356_ _g202360_))
                                         (_g200356_ _g202360_))))
                                 (_g200356_ _g202360_))))
                         (_g200356_ _g202360_)))))
              (let ((_g198595_
                     (lambda (_g202541_)
                       (if (gx#stx-pair? _g202541_)
                           (let ((_e207544_ (gx#syntax-e _g202541_)))
                             (let ((_hd208548_ (##car _e207544_))
                                   (_tl209551_ (##cdr _e207544_)))
                               (if (gx#stx-pair? _tl209551_)
                                   (let ((_e210554_ (gx#syntax-e _tl209551_)))
                                     (let ((_hd211558_ (##car _e210554_))
                                           (_tl212561_ (##cdr _e210554_)))
                                       (if (gx#stx-pair? _tl212561_)
                                           (let ((_e213564_
                                                  (gx#syntax-e _tl212561_)))
                                             (let ((_hd214568_
                                                    (##car _e213564_))
                                                   (_tl215571_
                                                    (##cdr _e213564_)))
                                               ((lambda (_L574_
                                                         _L576_
                                                         _L577_
                                                         _L578_)
                                                  (if (gx#identifier? _L576_)
                                                      (cons _L578_
                                                            (cons _L577_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _L576_ '()) _L574_)))
              (_g199537_ _g202541_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl215571_
                                                _hd214568_
                                                _hd211558_
                                                _hd208548_)))
                                           (_g199537_ _g202541_))))
                                   (_g199537_ _g202541_))))
                           (_g199537_ _g202541_)))))
                (_g198595_ _$stx195_)))))))
    (define |gxc[:0:]#meta-state|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g6500_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g6501_|
                   (cons |gxc[1]#_g6502_|
                         (cons |gxc[1]#_g6503_|
                               (cons (cons |gxc[1]#_g6504_|
                                           (cons |gxc[1]#_g6505_|
                                                 (cons |gxc[1]#_g6506_|
                                                       (cons |gxc[1]#_g6507_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g6508_|
                                                 (cons |gxc[1]#_g6509_|
                                                       (cons |gxc[1]#_g6510_|
                                                             (cons |gxc[1]#_g6511_|
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
       |gxc[1]#_g6512_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g6513_|
                   (cons |gxc[1]#_g6514_|
                         (cons |gxc[1]#_g6515_|
                               (cons (cons |gxc[1]#_g6516_|
                                           (cons |gxc[1]#_g6517_|
                                                 (cons |gxc[1]#_g6518_|
                                                       (cons |gxc[1]#_g6519_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g6520_|
                                                 (cons |gxc[1]#_g6521_|
                                                       (cons |gxc[1]#_g6522_|
                                                             (cons |gxc[1]#_g6523_|
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
