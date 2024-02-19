(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g204453_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g204455_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g204457_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g204462_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g204465_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g204470_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g204473_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g204478_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g204481_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g204486_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g204489_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx199744_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx199744_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx199747_)
        (let* ((_g199750199774_
                (lambda (_g199751199770_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g199751199770_))))
               (_g199749200077_
                (lambda (_g199751199778_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g199751199778_))
                      (let ((_e199756199781_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g199751199778_))))
                        (let ((_hd199755199785_
                               (let ()
                                 (declare (not safe))
                                 (##car _e199756199781_)))
                              (_tl199754199788_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e199756199781_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl199754199788_))
                              (let ((_e199759199791_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl199754199788_))))
                                (let ((_hd199758199795_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e199759199791_)))
                                      (_tl199757199798_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e199759199791_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl199757199798_))
                                      (let ((_g204424_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl199757199798_
                                                '0))))
                                        (begin
                                          (let ((_g204425_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g204424_)
                                                       (##vector-length
                                                        _g204424_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g204425_ 2)))
                                                (error "Context expects 2 values"
                                                       _g204425_)))
                                          (let ((_target199760199801_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g204424_ 0)))
                                                (_tl199762199804_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g204424_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl199762199804_))
                                                (letrec ((_loop199763199807_
                                                          (lambda (_hd199761199811_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause199767199814_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd199761199811_))
                        (let ((_e199764199817_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd199761199811_))))
                          (let ((_lp-hd199765199821_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e199764199817_)))
                                (_lp-tl199766199824_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e199764199817_))))
                            (_loop199763199807_
                             _lp-tl199766199824_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd199765199821_
                                     _clause199767199814_)))))
                        (let ((_clause199768199827_
                               (reverse _clause199767199814_)))
                          ((lambda (_L199831_ _L199833_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L199833_))
                                 (let* ((_g199852199869_
                                         (lambda (_g199853199865_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g199853199865_))))
                                        (_g199851199930_
                                         (lambda (_g199853199873_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g199853199873_))
                                               (let ((_g204426_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g199853199873_
                                                         '0))))
                                                 (begin
                                                   (let ((_g204427_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g204426_)
                        (##vector-length _g204426_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g204427_ 2)))
                 (error "Context expects 2 values" _g204427_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target199855199876_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g204426_
                                                             0)))
                                                         (_tl199857199879_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g204426_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl199857199879_))
                                                         (letrec ((_loop199858199882_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd199856199886_ _clause199862199889_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd199856199886_))
                                 (let ((_e199859199892_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd199856199886_))))
                                   (let ((_lp-hd199860199896_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e199859199892_)))
                                         (_lp-tl199861199899_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e199859199892_))))
                                     (_loop199858199882_
                                      _lp-tl199861199899_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd199860199896_
                                              _clause199862199889_)))))
                                 (let ((_clause199863199902_
                                        (reverse _clause199862199889_)))
                                   ((lambda (_L199906_)
                                      (let ()
                                        (let ((__tmp204439
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp204428
                                               (let ((__tmp204437
                                                      (let ((__tmp204438
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp204438 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp204429
                                                      (let ((__tmp204430
                                                             (let ((__tmp204436
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp204431
                            (let ((__tmp204435
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp204432
                                   (let ((__tmp204433
                                          (let ((__tmp204434
                                                 (lambda (_g199921199924_
                                                          _g199922199927_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g199921199924_
                                                           _g199922199927_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp204434
                                                    '()
                                                    _L199906_))))
                                     (declare (not safe))
                                     (cons _L199833_ __tmp204433))))
                              (declare (not safe))
                              (cons __tmp204435 __tmp204432))))
                       (declare (not safe))
                       (cons __tmp204436 __tmp204431))))
                (declare (not safe))
                (cons __tmp204430 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp204437
                                                       __tmp204429))))
                                          (declare (not safe))
                                          (cons __tmp204439 __tmp204428))))
                                    _clause199863199902_))))))
                   (_loop199858199882_ _target199855199876_ '()))
                 (_g199852199869_ _g199853199873_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g199852199869_
                                                _g199853199873_)))))
                                   (_g199851199930_
                                    (let ((__tmp204442
                                           (lambda (_clause199934_)
                                             (let* ((___stx204370204371_
                                                     _clause199934_)
                                                    (_g199938199965_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx204370204371_)))))
                                               (let ((___kont204373204374_
                                                      (lambda (_L200050_
                                                               _L200052_)
                                                        (let ((__tmp204443
                                                               (let ((__tmp204444
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp204446
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp204445
                                     (let ()
                                       (declare (not safe))
                                       (cons _L200050_ '()))))
                                (declare (not safe))
                                (cons __tmp204446 __tmp204445))))
                         (declare (not safe))
                         (cons __tmp204444 '()))))
                  (declare (not safe))
                  (cons _L200052_ __tmp204443))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont204375204376_
                                                      (lambda (_L200002_
                                                               _L200004_
                                                               _L200005_)
                                                        (let ((__tmp204447
                                                               (let ((__tmp204448
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp204449
                                     (let ((__tmp204451
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp204450
                                            (let ()
                                              (declare (not safe))
                                              (cons _L200002_ '()))))
                                       (declare (not safe))
                                       (cons __tmp204451 __tmp204450))))
                                (declare (not safe))
                                (cons __tmp204449 '()))))
                         (declare (not safe))
                         (cons _L200004_ __tmp204448))))
                  (declare (not safe))
                  (cons _L200005_ __tmp204447)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx204370204371_))
                                                     (let ((_e199944200030_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx204370204371_))))
                                                       (let ((_tl199942200037_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e199944200030_)))
                     (_hd199943200034_
                      (let () (declare (not safe)) (##car _e199944200030_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl199942200037_))
                     (let ((_e199947200040_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl199942200037_))))
                       (let ((_tl199945200047_
                              (let ()
                                (declare (not safe))
                                (##cdr _e199947200040_)))
                             (_hd199946200044_
                              (let ()
                                (declare (not safe))
                                (##car _e199947200040_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl199945200047_))
                             (___kont204373204374_
                              _hd199946200044_
                              _hd199943200034_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl199945200047_))
                                 (let ((_e199959199992_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl199945200047_))))
                                   (let ((_tl199957199999_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e199959199992_)))
                                         (_hd199958199996_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e199959199992_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl199957199999_))
                                         (___kont204375204376_
                                          _hd199958199996_
                                          _hd199946200044_
                                          _hd199943200034_)
                                         (let ()
                                           (declare (not safe))
                                           (_g199938199965_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g199938199965_))))))
                     (let () (declare (not safe)) (_g199938199965_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g199938199965_)))))))
                                          (__tmp204440
                                           (let ((__tmp204441
                                                  (lambda (_g200068200071_
                                                           _g200069200074_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g200068200071_
                                                            _g200069200074_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp204441
                                                     '()
                                                     _L199831_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp204442 __tmp204440))))
                                 (_g199750199774_ _g199751199778_)))
                           _clause199768199827_
                           _hd199758199795_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop199763199807_
                                                   _target199760199801_
                                                   '()))
                                                (_g199750199774_
                                                 _g199751199778_)))))
                                      (_g199750199774_ _g199751199778_))))
                              (_g199750199774_ _g199751199778_))))
                      (_g199750199774_ _g199751199778_)))))
          (_g199749200077_ _stx199747_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj204413
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj204413
           'gxc#symbol-table::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj204413
           'symbol-table
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj204413
           '(gensyms bindings)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj204413
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj204413
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj204413
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj204413
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj204413
           ':init!
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp204452 |gxc[1]#_g204453_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj204413
           __tmp204452
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp204454 |gxc[1]#_g204455_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj204413
           __tmp204454
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp204456 |gxc[1]#_g204457_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj204413
           __tmp204456
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp204458
               (let ((__tmp204463
                      (let ((__tmp204464 |gxc[1]#_g204465_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp204464)))
                     (__tmp204459
                      (let ((__tmp204460
                             (let ((__tmp204461 |gxc[1]#_g204462_|))
                               (declare (not safe))
                               (cons 'bindings __tmp204461))))
                        (declare (not safe))
                        (cons __tmp204460 '()))))
                 (declare (not safe))
                 (cons __tmp204463 __tmp204459))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj204413
           __tmp204458
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp204466
               (let ((__tmp204471
                      (let ((__tmp204472 |gxc[1]#_g204473_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp204472)))
                     (__tmp204467
                      (let ((__tmp204468
                             (let ((__tmp204469 |gxc[1]#_g204470_|))
                               (declare (not safe))
                               (cons 'bindings __tmp204469))))
                        (declare (not safe))
                        (cons __tmp204468 '()))))
                 (declare (not safe))
                 (cons __tmp204471 __tmp204467))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj204413
           __tmp204466
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp204474
               (let ((__tmp204479
                      (let ((__tmp204480 |gxc[1]#_g204481_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp204480)))
                     (__tmp204475
                      (let ((__tmp204476
                             (let ((__tmp204477 |gxc[1]#_g204478_|))
                               (declare (not safe))
                               (cons 'bindings __tmp204477))))
                        (declare (not safe))
                        (cons __tmp204476 '()))))
                 (declare (not safe))
                 (cons __tmp204479 __tmp204475))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj204413
           __tmp204474
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp204482
               (let ((__tmp204487
                      (let ((__tmp204488 |gxc[1]#_g204489_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp204488)))
                     (__tmp204483
                      (let ((__tmp204484
                             (let ((__tmp204485 |gxc[1]#_g204486_|))
                               (declare (not safe))
                               (cons 'bindings __tmp204485))))
                        (declare (not safe))
                        (cons __tmp204484 '()))))
                 (declare (not safe))
                 (cons __tmp204487 __tmp204483))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj204413
           __tmp204482
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj204413))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx200083_)
        (let* ((_g200087200101_
                (lambda (_g200088200097_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g200088200097_))))
               (_g200086200142_
                (lambda (_g200088200105_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g200088200105_))
                      (let ((_e200092200108_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g200088200105_))))
                        (let ((_hd200091200112_
                               (let ()
                                 (declare (not safe))
                                 (##car _e200092200108_)))
                              (_tl200090200115_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e200092200108_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl200090200115_))
                              (let ((_e200095200118_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl200090200115_))))
                                (let ((_hd200094200122_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e200095200118_)))
                                      (_tl200093200125_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e200095200118_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl200093200125_))
                                      ((lambda (_L200128_)
                                         (let ((__tmp204497
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp204490
                                                (let ((__tmp204496
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp204491
                                                       (let ((__tmp204492
                                                              (let ((__tmp204495
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp204493
                             (let ((__tmp204494
                                    (let ()
                                      (declare (not safe))
                                      (cons _L200128_ '()))))
                               (declare (not safe))
                               (cons '() __tmp204494))))
                        (declare (not safe))
                        (cons __tmp204495 __tmp204493))))
                 (declare (not safe))
                 (cons __tmp204492 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp204496
                                                        __tmp204491))))
                                           (declare (not safe))
                                           (cons __tmp204497 __tmp204490)))
                                       _hd200094200122_)
                                      (_g200087200101_ _g200088200105_))))
                              (_g200087200101_ _g200088200105_))))
                      (_g200087200101_ _g200088200105_)))))
          (_g200086200142_ _$stx200083_))))))
