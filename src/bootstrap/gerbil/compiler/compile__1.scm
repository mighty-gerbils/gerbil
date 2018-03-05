(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gxc[1]#_g12140_|
    (gx#make-syntax-quote 'meta-state::t #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g12141_|
    (gx#make-syntax-quote 'meta-state::t #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g12142_|
    (gx#make-syntax-quote
     'make-meta-state
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12143_|
    (gx#make-syntax-quote 'meta-state? #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g12144_|
    (gx#make-syntax-quote
     'meta-state-src
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12145_|
    (gx#make-syntax-quote 'meta-state-n #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g12146_|
    (gx#make-syntax-quote
     'meta-state-open
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12147_|
    (gx#make-syntax-quote
     'meta-state-blocks
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12148_|
    (gx#make-syntax-quote
     'meta-state-src-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12149_|
    (gx#make-syntax-quote
     'meta-state-n-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12150_|
    (gx#make-syntax-quote
     'meta-state-open-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12151_|
    (gx#make-syntax-quote
     'meta-state-blocks-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12152_|
    (gx#make-syntax-quote
     'meta-state-block::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12153_|
    (gx#make-syntax-quote
     'meta-state-block::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12154_|
    (gx#make-syntax-quote
     'make-meta-state-block
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12155_|
    (gx#make-syntax-quote
     'meta-state-block?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12156_|
    (gx#make-syntax-quote
     'meta-state-block-ctx
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12157_|
    (gx#make-syntax-quote
     'meta-state-block-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12158_|
    (gx#make-syntax-quote
     'meta-state-block-n
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12159_|
    (gx#make-syntax-quote
     'meta-state-block-code
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12160_|
    (gx#make-syntax-quote
     'meta-state-block-ctx-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12161_|
    (gx#make-syntax-quote
     'meta-state-block-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12162_|
    (gx#make-syntax-quote
     'meta-state-block-n-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g12163_|
    (gx#make-syntax-quote
     'meta-state-block-code-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#defcompile-method|
      (lambda (_$stx3145_)
        (let* ((_g31513230_
                (lambda (_g31523226_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g31523226_)))
               (_g31503304_
                (lambda (_g31523234_)
                  (if (gx#stx-pair? _g31523234_)
                      (let ((_e32133237_ (gx#syntax-e _g31523234_)))
                        (let ((_hd32143241_ (##car _e32133237_))
                              (_tl32153244_ (##cdr _e32133237_)))
                          (if (gx#stx-pair? _tl32153244_)
                              (let ((_e32163247_ (gx#syntax-e _tl32153244_)))
                                (let ((_hd32173251_ (##car _e32163247_))
                                      (_tl32183254_ (##cdr _e32163247_)))
                                  (if (gx#stx-pair? _tl32183254_)
                                      (let ((_e32193257_
                                             (gx#syntax-e _tl32183254_)))
                                        (let ((_hd32203261_
                                               (##car _e32193257_))
                                              (_tl32213264_
                                               (##cdr _e32193257_)))
                                          (if (gx#stx-pair? _hd32203261_)
                                              (let ((_e32223267_
                                                     (gx#syntax-e
                                                      _hd32203261_)))
                                                (let ((_hd32233271_
                                                       (##car _e32223267_))
                                                      (_tl32243274_
                                                       (##cdr _e32223267_)))
                                                  ((lambda (_L3277_
                                                            _L3279_
                                                            _L3280_
                                                            _L3281_
                                                            _L3282_)
                                                     (if (gx#identifier?
                                                          _L3281_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'begin)
                                                               (cons (cons _L3282_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons '#f
                                         (cons (cons _L3280_ _L3279_)
                                               _L3277_)))
                             (cons (cons (gx#datum->syntax '#f 'define)
                                         (cons (cons _L3281_
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
                                                 (cons _L3280_ '()))
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
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   '())))
                 (_g31513230_ _g31523234_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl32213264_
                                                   _tl32243274_
                                                   _hd32233271_
                                                   _hd32173251_
                                                   _hd32143241_)))
                                              (_g31513230_ _g31523234_))))
                                      (_g31513230_ _g31523234_))))
                              (_g31513230_ _g31523234_))))
                      (_g31513230_ _g31523234_))))
               (_g31493485_
                (lambda (_g31523308_)
                  (if (gx#stx-pair? _g31523308_)
                      (let ((_e31703311_ (gx#syntax-e _g31523308_)))
                        (let ((_hd31713315_ (##car _e31703311_))
                              (_tl31723318_ (##cdr _e31703311_)))
                          (if (gx#stx-pair? _tl31723318_)
                              (let ((_e31733321_ (gx#syntax-e _tl31723318_)))
                                (let ((_hd31743325_ (##car _e31733321_))
                                      (_tl31753328_ (##cdr _e31733321_)))
                                  (if (gx#stx-datum? _hd31743325_)
                                      (if (equal? (gx#stx-e _hd31743325_) '#f)
                                          (if (gx#stx-pair? _tl31753328_)
                                              (let ((_e31763331_
                                                     (gx#syntax-e
                                                      _tl31753328_)))
                                                (let ((_hd31773335_
                                                       (##car _e31763331_))
                                                      (_tl31783338_
                                                       (##cdr _e31763331_)))
                                                  (if (gx#stx-pair?
                                                       _hd31773335_)
                                                      (let ((_e31793341_
                                                             (gx#syntax-e
                                                              _hd31773335_)))
                                                        (let ((_hd31803345_
                                                               (##car _e31793341_))
                                                              (_tl31813348_
                                                               (##cdr _e31793341_)))
                                                          (if (gx#stx-pair/null?
                                                               _tl31813348_)
                                                              (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _tl31813348_)
                                '0)
                          (let ((_g12136_
                                 (gx#syntax-split-splice _tl31813348_ '0)))
                            (begin
                              (let ((_g12137_ (values-count _g12136_)))
                                (if (not (fx= _g12137_ 2))
                                    (error "Context expects 2 values"
                                           _g12137_)))
                              (let ((_target31823351_ (values-ref _g12136_ 0))
                                    (_tl31843354_ (values-ref _g12136_ 1)))
                                (if (gx#stx-null? _tl31843354_)
                                    (letrec ((_loop31853357_
                                              (lambda (_hd31833361_
                                                       _super31893364_)
                                                (if (gx#stx-pair? _hd31833361_)
                                                    (let ((_e31863367_
                                                           (gx#syntax-e
                                                            _hd31833361_)))
                                                      (let ((_lp-hd31873371_
                                                             (##car _e31863367_))
                                                            (_lp-tl31883374_
                                                             (##cdr _e31863367_)))
                                                        (_loop31853357_
                                                         _lp-tl31883374_
                                                         (cons _lp-hd31873371_
                                                               _super31893364_))))
                                                    (let ((_super31903377_
                                                           (reverse _super31893364_)))
                                                      (if (gx#stx-pair/null?
                                                           _tl31783338_)
                                                          (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tl31783338_)
                            '0)
                      (let ((_g12138_
                             (gx#syntax-split-splice _tl31783338_ '0)))
                        (begin
                          (let ((_g12139_ (values-count _g12138_)))
                            (if (not (fx= _g12139_ 2))
                                (error "Context expects 2 values" _g12139_)))
                          (let ((_target31913381_ (values-ref _g12138_ 0))
                                (_tl31933384_ (values-ref _g12138_ 1)))
                            (if (gx#stx-null? _tl31933384_)
                                (letrec ((_loop31943387_
                                          (lambda (_hd31923391_
                                                   _method31983394_
                                                   _symbol31993396_)
                                            (if (gx#stx-pair? _hd31923391_)
                                                (let ((_e31953399_
                                                       (gx#syntax-e
                                                        _hd31923391_)))
                                                  (let ((_lp-hd31963403_
                                                         (##car _e31953399_))
                                                        (_lp-tl31973406_
                                                         (##cdr _e31953399_)))
                                                    (if (gx#stx-pair?
                                                         _lp-hd31963403_)
                                                        (let ((_e32023409_
                                                               (gx#syntax-e
                                                                _lp-hd31963403_)))
                                                          (let ((_hd32033413_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e32023409_))
                        (_tl32043416_ (##cdr _e32023409_)))
                    (if (gx#stx-pair? _tl32043416_)
                        (let ((_e32053419_ (gx#syntax-e _tl32043416_)))
                          (let ((_hd32063423_ (##car _e32053419_))
                                (_tl32073426_ (##cdr _e32053419_)))
                            (if (gx#stx-null? _tl32073426_)
                                (_loop31943387_
                                 _lp-tl31973406_
                                 (cons _hd32063423_ _method31983394_)
                                 (cons _hd32033413_ _symbol31993396_))
                                (_g31503304_ _g31523308_))))
                        (_g31503304_ _g31523308_))))
                (_g31503304_ _g31523308_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_method32003429_
                                                       (reverse _method31983394_))
                                                      (_symbol32013432_
                                                       (reverse _symbol31993396_)))
                                                  ((lambda (_L3435_
                                                            _L3437_
                                                            _L3438_
                                                            _L3439_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'define)
                                                           (cons _L3439_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'delay)
                                     (cons (cons (gx#datum->syntax '#f 'let)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'tbl)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'make-hash-table-eq)
                                 '())
                           '()))
               (begin
                 '#!void
                 (foldr (lambda (_g34653471_ _g34663474_)
                          (cons (cons (gx#datum->syntax '#f 'hash-copy!)
                                      (cons (gx#datum->syntax '#f 'tbl)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'force)
                                                        (cons _g34653471_ '()))
                                                  '())))
                                _g34663474_))
                        (begin
                          (gx#syntax-check-splice-targets _L3435_ _L3437_)
                          (foldr (lambda (_g34673477_ _g34683480_ _g34693482_)
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
                         (cons _g34683480_ '()))
                   (cons _g34673477_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _g34693482_))
                                 (cons (gx#datum->syntax '#f 'tbl) '())
                                 _L3435_
                                 _L3437_))
                        _L3438_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _method32003429_
                                                   _symbol32013432_
                                                   _super31903377_
                                                   _hd31803345_))))))
                                  (_loop31943387_ _target31913381_ '() '()))
                                (_g31503304_ _g31523308_)))))
                      (_g31503304_ _g31523308_))
                  (_g31503304_ _g31523308_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop31853357_ _target31823351_ '()))
                                    (_g31503304_ _g31523308_)))))
                          (_g31503304_ _g31523308_))
                      (_g31503304_ _g31523308_))))
              (_g31503304_ _g31523308_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g31503304_ _g31523308_))
                                          (_g31503304_ _g31523308_))
                                      (_g31503304_ _g31523308_))))
                              (_g31503304_ _g31523308_))))
                      (_g31503304_ _g31523308_))))
               (_g31483543_
                (lambda (_g31523489_)
                  (if (gx#stx-pair? _g31523489_)
                      (let ((_e31573492_ (gx#syntax-e _g31523489_)))
                        (let ((_hd31583496_ (##car _e31573492_))
                              (_tl31593499_ (##cdr _e31573492_)))
                          (if (gx#stx-pair? _tl31593499_)
                              (let ((_e31603502_ (gx#syntax-e _tl31593499_)))
                                (let ((_hd31613506_ (##car _e31603502_))
                                      (_tl31623509_ (##cdr _e31603502_)))
                                  (if (gx#stx-pair? _tl31623509_)
                                      (let ((_e31633512_
                                             (gx#syntax-e _tl31623509_)))
                                        (let ((_hd31643516_
                                               (##car _e31633512_))
                                              (_tl31653519_
                                               (##cdr _e31633512_)))
                                          ((lambda (_L3522_
                                                    _L3524_
                                                    _L3525_
                                                    _L3526_)
                                             (if (gx#identifier? _L3524_)
                                                 (cons _L3526_
                                                       (cons _L3525_
                                                             (cons (cons _L3524_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           _L3522_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g31493485_ _g31523489_)))
                                           _tl31653519_
                                           _hd31643516_
                                           _hd31613506_
                                           _hd31583496_)))
                                      (_g31493485_ _g31523489_))))
                              (_g31493485_ _g31523489_))))
                      (_g31493485_ _g31523489_)))))
          (_g31483543_ _$stx3145_))))
    (define |gxc[:0:]#meta-state|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g12140_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g12141_|
                   (cons |gxc[1]#_g12142_|
                         (cons |gxc[1]#_g12143_|
                               (cons (cons |gxc[1]#_g12144_|
                                           (cons |gxc[1]#_g12145_|
                                                 (cons |gxc[1]#_g12146_|
                                                       (cons |gxc[1]#_g12147_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g12148_|
                                                 (cons |gxc[1]#_g12149_|
                                                       (cons |gxc[1]#_g12150_|
                                                             (cons |gxc[1]#_g12151_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gxc#meta-state::t
        '#f
        'meta-state
        ':init!
        '()
        '(src n open blocks))))
    (define |gxc[:0:]#meta-state-block|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g12152_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g12153_|
                   (cons |gxc[1]#_g12154_|
                         (cons |gxc[1]#_g12155_|
                               (cons (cons |gxc[1]#_g12156_|
                                           (cons |gxc[1]#_g12157_|
                                                 (cons |gxc[1]#_g12158_|
                                                       (cons |gxc[1]#_g12159_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g12160_|
                                                 (cons |gxc[1]#_g12161_|
                                                       (cons |gxc[1]#_g12162_|
                                                             (cons |gxc[1]#_g12163_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gxc#meta-state-block::t
        '#f
        'meta-state-block
        '#f
        '()
        '(ctx phi n code))))))
