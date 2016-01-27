(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gxc[1]#_g18674_| (gx#core-quote-syntax 'symbol-table::t))
  (define |gxc[1]#_g18675_| (gx#core-quote-syntax 'symbol-table::t))
  (define |gxc[1]#_g18676_| (gx#core-quote-syntax 'make-symbol-table))
  (define |gxc[1]#_g18677_| (gx#core-quote-syntax 'symbol-table?))
  (define |gxc[1]#_g18678_| (gx#core-quote-syntax 'symbol-table-gensyms))
  (define |gxc[1]#_g18679_| (gx#core-quote-syntax 'symbol-table-bindings))
  (define |gxc[1]#_g18680_| (gx#core-quote-syntax 'symbol-table-gensyms-set!))
  (define |gxc[1]#_g18681_| (gx#core-quote-syntax 'symbol-table-bindings-set!))
  (define |gxc[1]#_g18686_| (gx#core-quote-syntax 'meta-state::t))
  (define |gxc[1]#_g18687_| (gx#core-quote-syntax 'meta-state::t))
  (define |gxc[1]#_g18688_| (gx#core-quote-syntax 'make-meta-state))
  (define |gxc[1]#_g18689_| (gx#core-quote-syntax 'meta-state?))
  (define |gxc[1]#_g18690_| (gx#core-quote-syntax 'meta-state-src))
  (define |gxc[1]#_g18691_| (gx#core-quote-syntax 'meta-state-n))
  (define |gxc[1]#_g18692_| (gx#core-quote-syntax 'meta-state-open))
  (define |gxc[1]#_g18693_| (gx#core-quote-syntax 'meta-state-blocks))
  (define |gxc[1]#_g18694_| (gx#core-quote-syntax 'meta-state-src-set!))
  (define |gxc[1]#_g18695_| (gx#core-quote-syntax 'meta-state-n-set!))
  (define |gxc[1]#_g18696_| (gx#core-quote-syntax 'meta-state-open-set!))
  (define |gxc[1]#_g18697_| (gx#core-quote-syntax 'meta-state-blocks-set!))
  (define |gxc[1]#_g18698_| (gx#core-quote-syntax 'meta-state-block::t))
  (define |gxc[1]#_g18699_| (gx#core-quote-syntax 'meta-state-block::t))
  (define |gxc[1]#_g18700_| (gx#core-quote-syntax 'make-meta-state-block))
  (define |gxc[1]#_g18701_| (gx#core-quote-syntax 'meta-state-block?))
  (define |gxc[1]#_g18702_| (gx#core-quote-syntax 'meta-state-block-ctx))
  (define |gxc[1]#_g18703_| (gx#core-quote-syntax 'meta-state-block-phi))
  (define |gxc[1]#_g18704_| (gx#core-quote-syntax 'meta-state-block-n))
  (define |gxc[1]#_g18705_| (gx#core-quote-syntax 'meta-state-block-code))
  (define |gxc[1]#_g18706_| (gx#core-quote-syntax 'meta-state-block-ctx-set!))
  (define |gxc[1]#_g18707_| (gx#core-quote-syntax 'meta-state-block-phi-set!))
  (define |gxc[1]#_g18708_| (gx#core-quote-syntax 'meta-state-block-n-set!))
  (define |gxc[1]#_g18709_| (gx#core-quote-syntax 'meta-state-block-code-set!))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx12726_)
        (gx#macro-expand-syntax-case _stx12726_ 'stx-eq? 'stx-e 'quote)))
    (define |gxc[:0:]#symbol-table|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g18674_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g18675_|
                   (cons |gxc[1]#_g18676_|
                         (cons |gxc[1]#_g18677_|
                               (cons (cons |gxc[1]#_g18678_|
                                           (cons |gxc[1]#_g18679_| '()))
                                     (cons (cons |gxc[1]#_g18680_|
                                                 (cons |gxc[1]#_g18681_| '()))
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
      (lambda (_$stx12729_)
        (let ((_g1273512814_
               (lambda (_g1273612810_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1273612810_))))
          (let ((_g1273412888_
                 (lambda (_g1273612818_)
                   (if (gx#stx-pair? _g1273612818_)
                       (let ((_e1279712821_ (gx#syntax-e _g1273612818_)))
                         (let ((_hd1279812825_ (##car _e1279712821_))
                               (_tl1279912828_ (##cdr _e1279712821_)))
                           (if (gx#stx-pair? _tl1279912828_)
                               (let ((_e1280012831_
                                      (gx#syntax-e _tl1279912828_)))
                                 (let ((_hd1280112835_ (##car _e1280012831_))
                                       (_tl1280212838_ (##cdr _e1280012831_)))
                                   (if (gx#stx-pair? _tl1280212838_)
                                       (let ((_e1280312841_
                                              (gx#syntax-e _tl1280212838_)))
                                         (let ((_hd1280412845_
                                                (##car _e1280312841_))
                                               (_tl1280512848_
                                                (##cdr _e1280312841_)))
                                           (if (gx#stx-pair? _hd1280412845_)
                                               (let ((_e1280612851_
                                                      (gx#syntax-e
                                                       _hd1280412845_)))
                                                 (let ((_hd1280712855_
                                                        (##car _e1280612851_))
                                                       (_tl1280812858_
                                                        (##cdr _e1280612851_)))
                                                   ((lambda (_L12861_
                                                             _L12863_
                                                             _L12864_
                                                             _L12865_
                                                             _L12866_)
                                                      (if (gx#identifier?
                                                           _L12865_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin)
                        (cons (cons _L12866_
                                    (cons '#f
                                          (cons (cons _L12864_ _L12863_)
                                                _L12861_)))
                              (cons (cons (gx#datum->syntax '#f 'define)
                                          (cons (cons _L12865_
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
                                                  (cons _L12864_ '()))
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
                  (_g1273512814_ _g1273612818_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1280512848_
                                                    _tl1280812858_
                                                    _hd1280712855_
                                                    _hd1280112835_
                                                    _hd1279812825_)))
                                               (_g1273512814_ _g1273612818_))))
                                       (_g1273512814_ _g1273612818_))))
                               (_g1273512814_ _g1273612818_))))
                       (_g1273512814_ _g1273612818_)))))
            (let ((_g1273313069_
                   (lambda (_g1273612892_)
                     (if (gx#stx-pair? _g1273612892_)
                         (let ((_e1275412895_ (gx#syntax-e _g1273612892_)))
                           (let ((_hd1275512899_ (##car _e1275412895_))
                                 (_tl1275612902_ (##cdr _e1275412895_)))
                             (if (gx#stx-pair? _tl1275612902_)
                                 (let ((_e1275712905_
                                        (gx#syntax-e _tl1275612902_)))
                                   (let ((_hd1275812909_ (##car _e1275712905_))
                                         (_tl1275912912_
                                          (##cdr _e1275712905_)))
                                     (if (gx#stx-datum? _hd1275812909_)
                                         (if (equal? (gx#stx-e _hd1275812909_)
                                                     '#f)
                                             (if (gx#stx-pair? _tl1275912912_)
                                                 (let ((_e1276012915_
                                                        (gx#syntax-e
                                                         _tl1275912912_)))
                                                   (let ((_hd1276112919_
                                                          (##car _e1276012915_))
                                                         (_tl1276212922_
                                                          (##cdr _e1276012915_)))
                                                     (if (gx#stx-pair?
                                                          _hd1276112919_)
                                                         (let ((_e1276312925_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1276112919_)))
                   (let ((_hd1276412929_ (##car _e1276312925_))
                         (_tl1276512932_ (##cdr _e1276312925_)))
                     (if (gx#stx-pair/null? _tl1276512932_)
                         (if (fx>= (gx#stx-length _tl1276512932_) '0)
                             (let ((_g18682_
                                    (gx#syntax-split-splice
                                     _tl1276512932_
                                     '0)))
                               (begin
                                 (let ((_g18683_ (values-count _g18682_)))
                                   (if (not (fx= _g18683_ 2))
                                       (error "Context expects 2 values"
                                              _g18683_)))
                                 (let ((_target1276612935_
                                        (values-ref _g18682_ 0))
                                       (_tl1276812938_
                                        (values-ref _g18682_ 1)))
                                   (if (gx#stx-null? _tl1276812938_)
                                       (letrec ((_loop1276912941_
                                                 (lambda (_hd1276712945_
                                                          _super1277312948_)
                                                   (if (gx#stx-pair?
                                                        _hd1276712945_)
                                                       (let ((_e1277012951_
                                                              (gx#syntax-e
                                                               _hd1276712945_)))
                                                         (let ((_lp-hd1277112955_
                                                                (##car _e1277012951_))
                                                               (_lp-tl1277212958_
                                                                (##cdr _e1277012951_)))
                                                           (_loop1276912941_
                                                            _lp-tl1277212958_
                                                            (cons _lp-hd1277112955_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _super1277312948_))))
               (let ((_super1277412961_ (reverse _super1277312948_)))
                 (if (gx#stx-pair/null? _tl1276212922_)
                     (if (fx>= (gx#stx-length _tl1276212922_) '0)
                         (let ((_g18684_
                                (gx#syntax-split-splice _tl1276212922_ '0)))
                           (begin
                             (let ((_g18685_ (values-count _g18684_)))
                               (if (not (fx= _g18685_ 2))
                                   (error "Context expects 2 values"
                                          _g18685_)))
                             (let ((_target1277512965_ (values-ref _g18684_ 0))
                                   (_tl1277712968_ (values-ref _g18684_ 1)))
                               (if (gx#stx-null? _tl1277712968_)
                                   (letrec ((_loop1277812971_
                                             (lambda (_hd1277612975_
                                                      _method1278212978_
                                                      _symbol1278312980_)
                                               (if (gx#stx-pair?
                                                    _hd1277612975_)
                                                   (let ((_e1277912983_
                                                          (gx#syntax-e
                                                           _hd1277612975_)))
                                                     (let ((_lp-hd1278012987_
                                                            (##car _e1277912983_))
                                                           (_lp-tl1278112990_
                                                            (##cdr _e1277912983_)))
                                                       (if (gx#stx-pair?
                                                            _lp-hd1278012987_)
                                                           (let ((_e1278612993_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _lp-hd1278012987_)))
                     (let ((_hd1278712997_ (##car _e1278612993_))
                           (_tl1278813000_ (##cdr _e1278612993_)))
                       (if (gx#stx-pair? _tl1278813000_)
                           (let ((_e1278913003_ (gx#syntax-e _tl1278813000_)))
                             (let ((_hd1279013007_ (##car _e1278913003_))
                                   (_tl1279113010_ (##cdr _e1278913003_)))
                               (if (gx#stx-null? _tl1279113010_)
                                   (_loop1277812971_
                                    _lp-tl1278112990_
                                    (cons _hd1279013007_ _method1278212978_)
                                    (cons _hd1278712997_ _symbol1278312980_))
                                   (_g1273412888_ _g1273612892_))))
                           (_g1273412888_ _g1273612892_))))
                   (_g1273412888_ _g1273612892_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_method1278413013_
                                                          (reverse _method1278212978_))
                                                         (_symbol1278513016_
                                                          (reverse _symbol1278312980_)))
                                                     ((lambda (_L13019_
                                                               _L13021_
                                                               _L13022_
                                                               _L13023_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'define)
                                                              (cons _L13023_
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
                    (foldr (lambda (_g1304913055_ _g1305013058_)
                             (cons (cons (gx#datum->syntax '#f 'hash-copy!)
                                         (cons (gx#datum->syntax '#f 'tbl)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'force)
                                                           (cons _g1304913055_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   _g1305013058_))
                           (begin
                             (gx#syntax-check-splice-targets _L13019_ _L13021_)
                             (foldr (lambda (_g1305113061_
                                             _g1305213064_
                                             _g1305313066_)
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
                            (cons _g1305213064_ '()))
                      (cons _g1305113061_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g1305313066_))
                                    (cons (gx#datum->syntax '#f 'tbl) '())
                                    _L13019_
                                    _L13021_))
                           _L13022_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  '()))))
              _method1278413013_
              _symbol1278513016_
              _super1277412961_
              _hd1276412929_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop1277812971_
                                      _target1277512965_
                                      '()
                                      '()))
                                   (_g1273412888_ _g1273612892_)))))
                         (_g1273412888_ _g1273612892_))
                     (_g1273412888_ _g1273612892_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop1276912941_
                                          _target1276612935_
                                          '()))
                                       (_g1273412888_ _g1273612892_)))))
                             (_g1273412888_ _g1273612892_))
                         (_g1273412888_ _g1273612892_))))
                 (_g1273412888_ _g1273612892_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1273412888_ _g1273612892_))
                                             (_g1273412888_ _g1273612892_))
                                         (_g1273412888_ _g1273612892_))))
                                 (_g1273412888_ _g1273612892_))))
                         (_g1273412888_ _g1273612892_)))))
              (let ((_g1273213127_
                     (lambda (_g1273613073_)
                       (if (gx#stx-pair? _g1273613073_)
                           (let ((_e1274113076_ (gx#syntax-e _g1273613073_)))
                             (let ((_hd1274213080_ (##car _e1274113076_))
                                   (_tl1274313083_ (##cdr _e1274113076_)))
                               (if (gx#stx-pair? _tl1274313083_)
                                   (let ((_e1274413086_
                                          (gx#syntax-e _tl1274313083_)))
                                     (let ((_hd1274513090_
                                            (##car _e1274413086_))
                                           (_tl1274613093_
                                            (##cdr _e1274413086_)))
                                       (if (gx#stx-pair? _tl1274613093_)
                                           (let ((_e1274713096_
                                                  (gx#syntax-e
                                                   _tl1274613093_)))
                                             (let ((_hd1274813100_
                                                    (##car _e1274713096_))
                                                   (_tl1274913103_
                                                    (##cdr _e1274713096_)))
                                               ((lambda (_L13106_
                                                         _L13108_
                                                         _L13109_
                                                         _L13110_)
                                                  (if (gx#identifier? _L13108_)
                                                      (cons _L13110_
                                                            (cons _L13109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _L13108_ '()) _L13106_)))
              (_g1273313069_ _g1273613073_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl1274913103_
                                                _hd1274813100_
                                                _hd1274513090_
                                                _hd1274213080_)))
                                           (_g1273313069_ _g1273613073_))))
                                   (_g1273313069_ _g1273613073_))))
                           (_g1273313069_ _g1273613073_)))))
                (_g1273213127_ _$stx12729_)))))))
    (define |gxc[:0:]#meta-state|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g18686_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g18687_|
                   (cons |gxc[1]#_g18688_|
                         (cons |gxc[1]#_g18689_|
                               (cons (cons |gxc[1]#_g18690_|
                                           (cons |gxc[1]#_g18691_|
                                                 (cons |gxc[1]#_g18692_|
                                                       (cons |gxc[1]#_g18693_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g18694_|
                                                 (cons |gxc[1]#_g18695_|
                                                       (cons |gxc[1]#_g18696_|
                                                             (cons |gxc[1]#_g18697_|
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
       |gxc[1]#_g18698_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g18699_|
                   (cons |gxc[1]#_g18700_|
                         (cons |gxc[1]#_g18701_|
                               (cons (cons |gxc[1]#_g18702_|
                                           (cons |gxc[1]#_g18703_|
                                                 (cons |gxc[1]#_g18704_|
                                                       (cons |gxc[1]#_g18705_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g18706_|
                                                 (cons |gxc[1]#_g18707_|
                                                       (cons |gxc[1]#_g18708_|
                                                             (cons |gxc[1]#_g18709_|
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
