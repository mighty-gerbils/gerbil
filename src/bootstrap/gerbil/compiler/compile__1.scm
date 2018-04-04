(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g15649_|
    (gx#make-syntax-quote 'meta-state::t #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g15650_|
    (gx#make-syntax-quote
     'make-meta-state
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g15651_|
    (gx#make-syntax-quote 'meta-state? #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g15652_|
    (gx#make-syntax-quote
     'meta-state-src
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g15653_|
    (gx#make-syntax-quote 'meta-state-n #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g15654_|
    (gx#make-syntax-quote
     'meta-state-open
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g15655_|
    (gx#make-syntax-quote
     'meta-state-blocks
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g15656_|
    (gx#make-syntax-quote
     'meta-state-src-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g15657_|
    (gx#make-syntax-quote
     'meta-state-n-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g15658_|
    (gx#make-syntax-quote
     'meta-state-open-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g15659_|
    (gx#make-syntax-quote
     'meta-state-blocks-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g15660_|
    (gx#make-syntax-quote
     'meta-state-block::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g15661_|
    (gx#make-syntax-quote
     'make-meta-state-block
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g15662_|
    (gx#make-syntax-quote
     'meta-state-block?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g15663_|
    (gx#make-syntax-quote
     'meta-state-block-ctx
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g15664_|
    (gx#make-syntax-quote
     'meta-state-block-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g15665_|
    (gx#make-syntax-quote
     'meta-state-block-n
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g15666_|
    (gx#make-syntax-quote
     'meta-state-block-code
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g15667_|
    (gx#make-syntax-quote
     'meta-state-block-ctx-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g15668_|
    (gx#make-syntax-quote
     'meta-state-block-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g15669_|
    (gx#make-syntax-quote
     'meta-state-block-n-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g15670_|
    (gx#make-syntax-quote
     'meta-state-block-code-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#defcompile-method|
      (lambda (_$stx4802_)
        (let* ((___stx1445614457_ _$stx4802_)
               (_g48084888_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx1445614457_))))
          (let ((___kont1445914460_
                 (lambda (_L5185_ _L5187_ _L5188_ _L5189_)
                   (cons _L5189_
                         (cons _L5188_ (cons (cons _L5187_ '()) _L5185_)))))
                (___kont1446114462_
                 (lambda (_L5097_ _L5099_ _L5100_ _L5101_)
                   (cons (gx#datum->syntax__0 '#f 'define)
                         (cons _L5101_
                               (cons (cons (gx#datum->syntax__0 '#f 'delay)
                                           (cons (cons (gx#datum->syntax__0
                                                        '#f
                                                        'let)
                                                       (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'tbl)
                           (cons (cons (gx#datum->syntax__0
                                        '#f
                                        'make-hash-table-eq)
                                       '())
                                 '()))
                     (begin
                       '#!void
                       (foldr1 (lambda (_g51285134_ _g51295137_)
                                 (cons (cons (gx#datum->syntax__0
                                              '#f
                                              'hash-copy!)
                                             (cons (gx#datum->syntax__0
                                                    '#f
                                                    'tbl)
                                                   (cons (cons (gx#datum->syntax__0
                                                                '#f
                                                                'force)
                                                               (cons _g51285134_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _g51295137_))
                               (begin
                                 (gx#syntax-check-splice-targets
                                  _L5097_
                                  _L5099_)
                                 (foldr2 (lambda (_g51305140_
                                                  _g51315143_
                                                  _g51325145_)
                                           (cons (cons (gx#datum->syntax__0
                                                        '#f
                                                        'hash-put!)
                                                       (cons (gx#datum->syntax__0
                                                              '#f
                                                              'tbl)
                                                             (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _g51315143_ '()))
                           (cons _g51305140_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _g51325145_))
                                         (cons (gx#datum->syntax__0 '#f 'tbl)
                                               '())
                                         _L5097_
                                         _L5099_))
                               _L5100_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())))))
                (___kont1446714468_
                 (lambda (_L4935_ _L4937_ _L4938_ _L4939_ _L4940_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (cons (cons _L4940_
                                     (cons '#f
                                           (cons (cons _L4938_ _L4937_)
                                                 _L4935_)))
                               (cons (cons (gx#datum->syntax__0 '#f 'define)
                                           (cons (cons _L4939_
                                                       (cons (gx#datum->syntax__0
                                                              '#f
                                                              'stx)
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'args)))
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              'parameterize)
                                                             (cons (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        '#f
                                        'current-compile-methods)
                                       (cons (cons (gx#datum->syntax__0
                                                    '#f
                                                    'force)
                                                   (cons _L4938_ '()))
                                             '()))
                                 '())
                           (cons (cons (gx#datum->syntax__0 '#f 'apply)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'compile-e)
                                             (cons (gx#datum->syntax__0
                                                    '#f
                                                    'stx)
                                                   (cons (gx#datum->syntax__0
                                                          '#f
                                                          'args)
                                                         '()))))
                                 '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((___match1454914550_
                    (lambda (_e48714895_
                             _hd48724899_
                             _tl48734902_
                             _e48744905_
                             _hd48754909_
                             _tl48764912_
                             _e48774915_
                             _hd48784919_
                             _tl48794922_
                             _e48804925_
                             _hd48814929_
                             _tl48824932_)
                      (let ((_L4935_ _tl48794922_)
                            (_L4937_ _tl48824932_)
                            (_L4938_ _hd48814929_)
                            (_L4939_ _hd48754909_)
                            (_L4940_ _hd48724899_))
                        (if (gx#identifier? _L4939_)
                            (___kont1446714468_
                             _L4935_
                             _L4937_
                             _L4938_
                             _L4939_
                             _L4940_)
                            (_g48084888_)))))
                   (___match1452514526_
                    (lambda (_e48274969_
                             _hd48284973_
                             _tl48294976_
                             _e48304979_
                             _hd48314983_
                             _tl48324986_
                             _e48334989_
                             _e48344993_
                             _hd48354997_
                             _tl48365000_
                             _e48375003_
                             _hd48385007_
                             _tl48395010_
                             ___splice1446314464_
                             _target48405013_
                             _tl48425016_)
                      (letrec ((_loop48435019_
                                (lambda (_hd48415023_ _super48475026_)
                                  (if (gx#stx-pair? _hd48415023_)
                                      (let ((_e48445029_
                                             (gx#syntax-e _hd48415023_)))
                                        (let ((_lp-tl48465036_
                                               (##cdr _e48445029_))
                                              (_lp-hd48455033_
                                               (##car _e48445029_)))
                                          (_loop48435019_
                                           _lp-tl48465036_
                                           (cons _lp-hd48455033_
                                                 _super48475026_))))
                                      (let ((_super48485039_
                                             (reverse _super48475026_)))
                                        (if (gx#stx-pair/null? _tl48365000_)
                                            (let ((___splice1446514466_
                                                   (gx#syntax-split-splice
                                                    _tl48365000_
                                                    '0)))
                                              (let ((_tl48515046_
                                                     (##vector-ref
                                                      ___splice1446514466_
                                                      '1))
                                                    (_target48495043_
                                                     (##vector-ref
                                                      ___splice1446514466_
                                                      '0)))
                                                (if (gx#stx-null? _tl48515046_)
                                                    (letrec ((_loop48525049_
                                                              (lambda (_hd48505053_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _method48565056_
                               _symbol48575058_)
                        (if (gx#stx-pair? _hd48505053_)
                            (let ((_e48535061_ (gx#syntax-e _hd48505053_)))
                              (let ((_lp-tl48555068_ (##cdr _e48535061_))
                                    (_lp-hd48545065_ (##car _e48535061_)))
                                (if (gx#stx-pair? _lp-hd48545065_)
                                    (let ((_e48605071_
                                           (gx#syntax-e _lp-hd48545065_)))
                                      (let ((_tl48625078_ (##cdr _e48605071_))
                                            (_hd48615075_ (##car _e48605071_)))
                                        (if (gx#stx-pair? _tl48625078_)
                                            (let ((_e48635081_
                                                   (gx#syntax-e _tl48625078_)))
                                              (let ((_tl48655088_
                                                     (##cdr _e48635081_))
                                                    (_hd48645085_
                                                     (##car _e48635081_)))
                                                (if (gx#stx-null? _tl48655088_)
                                                    (_loop48525049_
                                                     _lp-tl48555068_
                                                     (cons _hd48645085_
                                                           _method48565056_)
                                                     (cons _hd48615075_
                                                           _symbol48575058_))
                                                    (___match1454914550_
                                                     _e48274969_
                                                     _hd48284973_
                                                     _tl48294976_
                                                     _e48304979_
                                                     _hd48314983_
                                                     _tl48324986_
                                                     _e48344993_
                                                     _hd48354997_
                                                     _tl48365000_
                                                     _e48375003_
                                                     _hd48385007_
                                                     _tl48395010_))))
                                            (___match1454914550_
                                             _e48274969_
                                             _hd48284973_
                                             _tl48294976_
                                             _e48304979_
                                             _hd48314983_
                                             _tl48324986_
                                             _e48344993_
                                             _hd48354997_
                                             _tl48365000_
                                             _e48375003_
                                             _hd48385007_
                                             _tl48395010_))))
                                    (___match1454914550_
                                     _e48274969_
                                     _hd48284973_
                                     _tl48294976_
                                     _e48304979_
                                     _hd48314983_
                                     _tl48324986_
                                     _e48344993_
                                     _hd48354997_
                                     _tl48365000_
                                     _e48375003_
                                     _hd48385007_
                                     _tl48395010_))))
                            (let ((_symbol48595094_ (reverse _symbol48575058_))
                                  (_method48585091_
                                   (reverse _method48565056_)))
                              (___kont1446114462_
                               _method48585091_
                               _symbol48595094_
                               _super48485039_
                               _hd48385007_))))))
              (_loop48525049_ _target48495043_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match1454914550_
                                                     _e48274969_
                                                     _hd48284973_
                                                     _tl48294976_
                                                     _e48304979_
                                                     _hd48314983_
                                                     _tl48324986_
                                                     _e48344993_
                                                     _hd48354997_
                                                     _tl48365000_
                                                     _e48375003_
                                                     _hd48385007_
                                                     _tl48395010_))))
                                            (___match1454914550_
                                             _e48274969_
                                             _hd48284973_
                                             _tl48294976_
                                             _e48304979_
                                             _hd48314983_
                                             _tl48324986_
                                             _e48344993_
                                             _hd48354997_
                                             _tl48365000_
                                             _e48375003_
                                             _hd48385007_
                                             _tl48395010_)))))))
                        (_loop48435019_ _target48405013_ '()))))
                   (___match1448714488_
                    (lambda (_e48145155_
                             _hd48155159_
                             _tl48165162_
                             _e48175165_
                             _hd48185169_
                             _tl48195172_
                             _e48205175_
                             _hd48215179_
                             _tl48225182_)
                      (let ((_L5185_ _tl48225182_)
                            (_L5187_ _hd48215179_)
                            (_L5188_ _hd48185169_)
                            (_L5189_ _hd48155159_))
                        (if (gx#identifier? _L5187_)
                            (___kont1445914460_
                             _L5185_
                             _L5187_
                             _L5188_
                             _L5189_)
                            (if (gx#stx-datum? _hd48185169_)
                                (let ((_e48334989_ (gx#stx-e _hd48185169_)))
                                  (if (equal? _e48334989_ '#f)
                                      (if (gx#stx-pair? _hd48215179_)
                                          (let ((_e48375003_
                                                 (gx#syntax-e _hd48215179_)))
                                            (let ((_tl48395010_
                                                   (##cdr _e48375003_))
                                                  (_hd48385007_
                                                   (##car _e48375003_)))
                                              (if (gx#stx-pair/null?
                                                   _tl48395010_)
                                                  (let ((___splice1446314464_
                                                         (gx#syntax-split-splice
                                                          _tl48395010_
                                                          '0)))
                                                    (let ((_tl48425016_
                                                           (##vector-ref
                                                            ___splice1446314464_
                                                            '1))
                                                          (_target48405013_
                                                           (##vector-ref
                                                            ___splice1446314464_
                                                            '0)))
                                                      (if (gx#stx-null?
                                                           _tl48425016_)
                                                          (___match1452514526_
                                                           _e48145155_
                                                           _hd48155159_
                                                           _tl48165162_
                                                           _e48175165_
                                                           _hd48185169_
                                                           _tl48195172_
                                                           _e48334989_
                                                           _e48205175_
                                                           _hd48215179_
                                                           _tl48225182_
                                                           _e48375003_
                                                           _hd48385007_
                                                           _tl48395010_
                                                           ___splice1446314464_
                                                           _target48405013_
                                                           _tl48425016_)
                                                          (___match1454914550_
                                                           _e48145155_
                                                           _hd48155159_
                                                           _tl48165162_
                                                           _e48175165_
                                                           _hd48185169_
                                                           _tl48195172_
                                                           _e48205175_
                                                           _hd48215179_
                                                           _tl48225182_
                                                           _e48375003_
                                                           _hd48385007_
                                                           _tl48395010_))))
                                                  (___match1454914550_
                                                   _e48145155_
                                                   _hd48155159_
                                                   _tl48165162_
                                                   _e48175165_
                                                   _hd48185169_
                                                   _tl48195172_
                                                   _e48205175_
                                                   _hd48215179_
                                                   _tl48225182_
                                                   _e48375003_
                                                   _hd48385007_
                                                   _tl48395010_))))
                                          (_g48084888_))
                                      (if (gx#stx-pair? _hd48215179_)
                                          (let ((_e48804925_
                                                 (gx#syntax-e _hd48215179_)))
                                            (let ((_tl48824932_
                                                   (##cdr _e48804925_))
                                                  (_hd48814929_
                                                   (##car _e48804925_)))
                                              (___match1454914550_
                                               _e48145155_
                                               _hd48155159_
                                               _tl48165162_
                                               _e48175165_
                                               _hd48185169_
                                               _tl48195172_
                                               _e48205175_
                                               _hd48215179_
                                               _tl48225182_
                                               _e48804925_
                                               _hd48814929_
                                               _tl48824932_)))
                                          (_g48084888_))))
                                (if (gx#stx-pair? _hd48215179_)
                                    (let ((_e48804925_
                                           (gx#syntax-e _hd48215179_)))
                                      (let ((_tl48824932_ (##cdr _e48804925_))
                                            (_hd48814929_ (##car _e48804925_)))
                                        (___match1454914550_
                                         _e48145155_
                                         _hd48155159_
                                         _tl48165162_
                                         _e48175165_
                                         _hd48185169_
                                         _tl48195172_
                                         _e48205175_
                                         _hd48215179_
                                         _tl48225182_
                                         _e48804925_
                                         _hd48814929_
                                         _tl48824932_)))
                                    (_g48084888_))))))))
              (if (gx#stx-pair? ___stx1445614457_)
                  (let ((_e48145155_ (gx#syntax-e ___stx1445614457_)))
                    (let ((_tl48165162_ (##cdr _e48145155_))
                          (_hd48155159_ (##car _e48145155_)))
                      (if (gx#stx-pair? _tl48165162_)
                          (let ((_e48175165_ (gx#syntax-e _tl48165162_)))
                            (let ((_tl48195172_ (##cdr _e48175165_))
                                  (_hd48185169_ (##car _e48175165_)))
                              (if (gx#stx-pair? _tl48195172_)
                                  (let ((_e48205175_
                                         (gx#syntax-e _tl48195172_)))
                                    (let ((_tl48225182_ (##cdr _e48205175_))
                                          (_hd48215179_ (##car _e48205175_)))
                                      (___match1448714488_
                                       _e48145155_
                                       _hd48155159_
                                       _tl48165162_
                                       _e48175165_
                                       _hd48185169_
                                       _tl48195172_
                                       _e48205175_
                                       _hd48215179_
                                       _tl48225182_)))
                                  (if (gx#stx-datum? _hd48185169_)
                                      (let ((_e48334989_
                                             (gx#stx-e _hd48185169_)))
                                        (_g48084888_))
                                      (_g48084888_)))))
                          (_g48084888_))))
                  (_g48084888_)))))))
    (define |gxc[:0:]#meta-state|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g15649_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g15649_|
                   (cons |gxc[1]#_g15650_|
                         (cons |gxc[1]#_g15651_|
                               (cons (cons |gxc[1]#_g15652_|
                                           (cons |gxc[1]#_g15653_|
                                                 (cons |gxc[1]#_g15654_|
                                                       (cons |gxc[1]#_g15655_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g15656_|
                                                 (cons |gxc[1]#_g15657_|
                                                       (cons |gxc[1]#_g15658_|
                                                             (cons |gxc[1]#_g15659_|
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
       |gxc[1]#_g15660_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g15660_|
                   (cons |gxc[1]#_g15661_|
                         (cons |gxc[1]#_g15662_|
                               (cons (cons |gxc[1]#_g15663_|
                                           (cons |gxc[1]#_g15664_|
                                                 (cons |gxc[1]#_g15665_|
                                                       (cons |gxc[1]#_g15666_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g15667_|
                                                 (cons |gxc[1]#_g15668_|
                                                       (cons |gxc[1]#_g15669_|
                                                             (cons |gxc[1]#_g15670_|
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
