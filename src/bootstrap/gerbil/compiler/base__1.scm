(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g5447_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g5456_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g5458_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g5462_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g5464_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g5466_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g5468_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx46_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__% _stx46_ 'stx-eq? 'stx-e 'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx49_)
        (let* ((_g5276_ (lambda (_g5372_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g5372_))))
               (_g51380_
                (lambda (_g5380_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g5380_))
                      (let ((_e5883_ (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _g5380_))))
                        (let ((_hd5787_
                               (let () (declare (not safe)) (##car _e5883_)))
                              (_tl5690_
                               (let () (declare (not safe)) (##cdr _e5883_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl5690_))
                              (let ((_e6193_ (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl5690_))))
                                (let ((_hd6097_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6193_)))
                                      (_tl59100_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6193_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl59100_))
                                      (let ((_g5419_ (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl59100_
                                                        '0))))
                                        (begin
                                          (let ((_g5420_ (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g5419_)
                                                               (##vector-length
                                                                _g5419_)
                                                               1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g5420_ 2)))
                                                (error "Context expects 2 values"
                                                       _g5420_)))
                                          (let ((_target62103_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g5419_ 0)))
                                                (_tl64106_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g5419_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null? _tl64106_))
                                                (letrec ((_loop65109_
                                                          (lambda (_hd63113_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause69116_)
                    (if (let () (declare (not safe)) (gx#stx-pair? _hd63113_))
                        (let ((_e66119_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd63113_))))
                          (let ((_lp-hd67123_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e66119_)))
                                (_lp-tl68126_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e66119_))))
                            (_loop65109_
                             _lp-tl68126_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd67123_ _clause69116_)))))
                        (let ((_clause70129_ (reverse _clause69116_)))
                          ((lambda (_L133_ _L135_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L135_))
                                 (let* ((_g155172_
                                         (lambda (_g156168_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g156168_))))
                                        (_g154233_
                                         (lambda (_g156176_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null? _g156176_))
                                               (let ((_g5421_ (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _g156176_ '0))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   (let ((_g5422_ (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (if (##values? _g5421_)
                                (##vector-length _g5421_)
                                1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g5422_ 2)))
                 (error "Context expects 2 values" _g5422_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target158179_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g5421_
                                                             0)))
                                                         (_tl160182_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g5421_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl160182_))
                                                         (letrec ((_loop161185_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd159189_ _clause165192_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd159189_))
                                 (let ((_e162195_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd159189_))))
                                   (let ((_lp-hd163199_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e162195_)))
                                         (_lp-tl164202_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e162195_))))
                                     (_loop161185_
                                      _lp-tl164202_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd163199_ _clause165192_)))))
                                 (let ((_clause166205_
                                        (reverse _clause165192_)))
                                   ((lambda (_L209_)
                                      (let ()
                                        (let ((__tmp5434
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp5423
                                               (let ((__tmp5432
                                                      (let ((__tmp5433
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp5433 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp5424
                                                      (let ((__tmp5425
                                                             (let ((__tmp5431
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp5426
                            (let ((__tmp5430
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp5427
                                   (let ((__tmp5428
                                          (let ((__tmp5429
                                                 (lambda (_g224227_ _g225230_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g224227_
                                                           _g225230_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp5429 '() _L209_))))
                                     (declare (not safe))
                                     (cons _L135_ __tmp5428))))
                              (declare (not safe))
                              (cons __tmp5430 __tmp5427))))
                       (declare (not safe))
                       (cons __tmp5431 __tmp5426))))
                (declare (not safe))
                (cons __tmp5425 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp5432 __tmp5424))))
                                          (declare (not safe))
                                          (cons __tmp5434 __tmp5423))))
                                    _clause166205_))))))
                   (_loop161185_ _target158179_ '()))
                 (_g155172_ _g156176_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g155172_ _g156176_)))))
                                   (_g154233_
                                    (let ((__tmp5437
                                           (lambda (_clause237_)
                                             (let* ((___stx53725373_
                                                     _clause237_)
                                                    (_g241268_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx53725373_)))))
                                               (let ((___kont53755376_
                                                      (lambda (_L353_ _L355_)
                                                        (let ((__tmp5438
                                                               (let ((__tmp5439
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp5441
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp5440
                                     (let ()
                                       (declare (not safe))
                                       (cons _L353_ '()))))
                                (declare (not safe))
                                (cons __tmp5441 __tmp5440))))
                         (declare (not safe))
                         (cons __tmp5439 '()))))
                  (declare (not safe))
                  (cons _L355_ __tmp5438))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont53775378_
                                                      (lambda (_L305_
                                                               _L307_
                                                               _L308_)
                                                        (let ((__tmp5442
                                                               (let ((__tmp5443
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp5444
                                     (let ((__tmp5446
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp5445
                                            (let ()
                                              (declare (not safe))
                                              (cons _L305_ '()))))
                                       (declare (not safe))
                                       (cons __tmp5446 __tmp5445))))
                                (declare (not safe))
                                (cons __tmp5444 '()))))
                         (declare (not safe))
                         (cons _L307_ __tmp5443))))
                  (declare (not safe))
                  (cons _L308_ __tmp5442)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx53725373_))
                                                     (let ((_e247333_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx53725373_))))
                                                       (let ((_tl245340_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e247333_)))
                     (_hd246337_
                      (let () (declare (not safe)) (##car _e247333_))))
                 (if (let () (declare (not safe)) (gx#stx-pair? _tl245340_))
                     (let ((_e250343_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl245340_))))
                       (let ((_tl248350_
                              (let () (declare (not safe)) (##cdr _e250343_)))
                             (_hd249347_
                              (let () (declare (not safe)) (##car _e250343_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl248350_))
                             (___kont53755376_ _hd249347_ _hd246337_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl248350_))
                                 (let ((_e262295_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl248350_))))
                                   (let ((_tl260302_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e262295_)))
                                         (_hd261299_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e262295_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl260302_))
                                         (___kont53775378_
                                          _hd261299_
                                          _hd249347_
                                          _hd246337_)
                                         (let ()
                                           (declare (not safe))
                                           (_g241268_)))))
                                 (let () (declare (not safe)) (_g241268_))))))
                     (let () (declare (not safe)) (_g241268_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g241268_)))))))
                                          (__tmp5435
                                           (let ((__tmp5436
                                                  (lambda (_g371374_ _g372377_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g371374_
                                                            _g372377_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp5436 '() _L133_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp5437 __tmp5435))))
                                 (_g5276_ _g5380_)))
                           _clause70129_
                           _hd6097_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop65109_
                                                   _target62103_
                                                   '()))
                                                (_g5276_ _g5380_)))))
                                      (_g5276_ _g5380_))))
                              (_g5276_ _g5380_))))
                      (_g5276_ _g5380_)))))
          (_g51380_ _stx49_))))
    (define |gxc[:0:]#symbol-table|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g5447_|
       'expander-identifiers:
       (let ((__tmp5448
              (let ((__tmp5469 |gxc[1]#_g5447_|)
                    (__tmp5449
                     (let ((__tmp5467 |gxc[1]#_g5468_|)
                           (__tmp5450
                            (let ((__tmp5465 |gxc[1]#_g5466_|)
                                  (__tmp5451
                                   (let ((__tmp5459
                                          (let ((__tmp5463 |gxc[1]#_g5464_|)
                                                (__tmp5460
                                                 (let ((__tmp5461
                                                        |gxc[1]#_g5462_|))
                                                   (declare (not safe))
                                                   (cons __tmp5461 '()))))
                                            (declare (not safe))
                                            (cons __tmp5463 __tmp5460)))
                                         (__tmp5452
                                          (let ((__tmp5453
                                                 (let ((__tmp5457
                                                        |gxc[1]#_g5458_|)
                                                       (__tmp5454
                                                        (let ((__tmp5455
                                                               |gxc[1]#_g5456_|))
                                                          (declare (not safe))
                                                          (cons __tmp5455
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp5457
                                                         __tmp5454))))
                                            (declare (not safe))
                                            (cons __tmp5453 '()))))
                                     (declare (not safe))
                                     (cons __tmp5459 __tmp5452))))
                              (declare (not safe))
                              (cons __tmp5465 __tmp5451))))
                       (declare (not safe))
                       (cons __tmp5467 __tmp5450))))
                (declare (not safe))
                (cons __tmp5469 __tmp5449))))
         (declare (not safe))
         (cons '#f __tmp5448))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gxc#symbol-table::t
        '#f
        'symbol-table
        ':init!
        '()
        '(gensyms bindings))))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx386_)
        (let* ((_g390404_
                (lambda (_g391400_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g391400_))))
               (_g389445_
                (lambda (_g391408_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g391408_))
                      (let ((_e395411_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g391408_))))
                        (let ((_hd394415_
                               (let () (declare (not safe)) (##car _e395411_)))
                              (_tl393418_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e395411_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl393418_))
                              (let ((_e398421_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl393418_))))
                                (let ((_hd397425_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e398421_)))
                                      (_tl396428_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e398421_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl396428_))
                                      ((lambda (_L431_)
                                         (let ((__tmp5477
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp5470
                                                (let ((__tmp5476
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp5471
                                                       (let ((__tmp5472
                                                              (let ((__tmp5475
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp5473
                             (let ((__tmp5474
                                    (let ()
                                      (declare (not safe))
                                      (cons _L431_ '()))))
                               (declare (not safe))
                               (cons '() __tmp5474))))
                        (declare (not safe))
                        (cons __tmp5475 __tmp5473))))
                 (declare (not safe))
                 (cons __tmp5472 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp5476 __tmp5471))))
                                           (declare (not safe))
                                           (cons __tmp5477 __tmp5470)))
                                       _hd397425_)
                                      (_g390404_ _g391408_))))
                              (_g390404_ _g391408_))))
                      (_g390404_ _g391408_)))))
          (_g389445_ _$stx386_))))))
