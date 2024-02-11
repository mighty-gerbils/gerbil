(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g192367_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192369_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192371_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192376_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192379_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192384_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192387_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192392_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192395_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192400_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192403_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx187257_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx187257_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx187260_)
        (let* ((_g187263187287_
                (lambda (_g187264187283_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g187264187283_))))
               (_g187262187590_
                (lambda (_g187264187291_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g187264187291_))
                      (let ((_e187269187294_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g187264187291_))))
                        (let ((_hd187268187298_
                               (let ()
                                 (declare (not safe))
                                 (##car _e187269187294_)))
                              (_tl187267187301_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e187269187294_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl187267187301_))
                              (let ((_e187272187304_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl187267187301_))))
                                (let ((_hd187271187308_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e187272187304_)))
                                      (_tl187270187311_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e187272187304_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl187270187311_))
                                      (let ((_g192338_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl187270187311_
                                                '0))))
                                        (begin
                                          (let ((_g192339_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g192338_)
                                                       (##vector-length
                                                        _g192338_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g192339_ 2)))
                                                (error "Context expects 2 values"
                                                       _g192339_)))
                                          (let ((_target187273187314_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g192338_ 0)))
                                                (_tl187275187317_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g192338_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl187275187317_))
                                                (letrec ((_loop187276187320_
                                                          (lambda (_hd187274187324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause187280187327_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd187274187324_))
                        (let ((_e187277187330_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd187274187324_))))
                          (let ((_lp-hd187278187334_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e187277187330_)))
                                (_lp-tl187279187337_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e187277187330_))))
                            (_loop187276187320_
                             _lp-tl187279187337_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd187278187334_
                                     _clause187280187327_)))))
                        (let ((_clause187281187340_
                               (reverse _clause187280187327_)))
                          ((lambda (_L187344_ _L187346_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L187346_))
                                 (let* ((_g187365187382_
                                         (lambda (_g187366187378_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g187366187378_))))
                                        (_g187364187443_
                                         (lambda (_g187366187386_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g187366187386_))
                                               (let ((_g192340_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g187366187386_
                                                         '0))))
                                                 (begin
                                                   (let ((_g192341_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g192340_)
                        (##vector-length _g192340_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g192341_ 2)))
                 (error "Context expects 2 values" _g192341_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target187368187389_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g192340_
                                                             0)))
                                                         (_tl187370187392_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g192340_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl187370187392_))
                                                         (letrec ((_loop187371187395_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd187369187399_ _clause187375187402_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd187369187399_))
                                 (let ((_e187372187405_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd187369187399_))))
                                   (let ((_lp-hd187373187409_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e187372187405_)))
                                         (_lp-tl187374187412_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e187372187405_))))
                                     (_loop187371187395_
                                      _lp-tl187374187412_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd187373187409_
                                              _clause187375187402_)))))
                                 (let ((_clause187376187415_
                                        (reverse _clause187375187402_)))
                                   ((lambda (_L187419_)
                                      (let ()
                                        (let ((__tmp192353
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp192342
                                               (let ((__tmp192351
                                                      (let ((__tmp192352
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp192352 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp192343
                                                      (let ((__tmp192344
                                                             (let ((__tmp192350
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp192345
                            (let ((__tmp192349
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp192346
                                   (let ((__tmp192347
                                          (let ((__tmp192348
                                                 (lambda (_g187434187437_
                                                          _g187435187440_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g187434187437_
                                                           _g187435187440_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp192348
                                                    '()
                                                    _L187419_))))
                                     (declare (not safe))
                                     (cons _L187346_ __tmp192347))))
                              (declare (not safe))
                              (cons __tmp192349 __tmp192346))))
                       (declare (not safe))
                       (cons __tmp192350 __tmp192345))))
                (declare (not safe))
                (cons __tmp192344 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp192351
                                                       __tmp192343))))
                                          (declare (not safe))
                                          (cons __tmp192353 __tmp192342))))
                                    _clause187376187415_))))))
                   (_loop187371187395_ _target187368187389_ '()))
                 (_g187365187382_ _g187366187386_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g187365187382_
                                                _g187366187386_)))))
                                   (_g187364187443_
                                    (let ((__tmp192356
                                           (lambda (_clause187447_)
                                             (let* ((___stx192284192285_
                                                     _clause187447_)
                                                    (_g187451187478_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx192284192285_)))))
                                               (let ((___kont192287192288_
                                                      (lambda (_L187563_
                                                               _L187565_)
                                                        (let ((__tmp192357
                                                               (let ((__tmp192358
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp192360
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp192359
                                     (let ()
                                       (declare (not safe))
                                       (cons _L187563_ '()))))
                                (declare (not safe))
                                (cons __tmp192360 __tmp192359))))
                         (declare (not safe))
                         (cons __tmp192358 '()))))
                  (declare (not safe))
                  (cons _L187565_ __tmp192357))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont192289192290_
                                                      (lambda (_L187515_
                                                               _L187517_
                                                               _L187518_)
                                                        (let ((__tmp192361
                                                               (let ((__tmp192362
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp192363
                                     (let ((__tmp192365
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp192364
                                            (let ()
                                              (declare (not safe))
                                              (cons _L187515_ '()))))
                                       (declare (not safe))
                                       (cons __tmp192365 __tmp192364))))
                                (declare (not safe))
                                (cons __tmp192363 '()))))
                         (declare (not safe))
                         (cons _L187517_ __tmp192362))))
                  (declare (not safe))
                  (cons _L187518_ __tmp192361)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx192284192285_))
                                                     (let ((_e187457187543_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx192284192285_))))
                                                       (let ((_tl187455187550_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e187457187543_)))
                     (_hd187456187547_
                      (let () (declare (not safe)) (##car _e187457187543_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl187455187550_))
                     (let ((_e187460187553_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl187455187550_))))
                       (let ((_tl187458187560_
                              (let ()
                                (declare (not safe))
                                (##cdr _e187460187553_)))
                             (_hd187459187557_
                              (let ()
                                (declare (not safe))
                                (##car _e187460187553_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl187458187560_))
                             (___kont192287192288_
                              _hd187459187557_
                              _hd187456187547_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl187458187560_))
                                 (let ((_e187472187505_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl187458187560_))))
                                   (let ((_tl187470187512_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e187472187505_)))
                                         (_hd187471187509_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e187472187505_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl187470187512_))
                                         (___kont192289192290_
                                          _hd187471187509_
                                          _hd187459187557_
                                          _hd187456187547_)
                                         (let ()
                                           (declare (not safe))
                                           (_g187451187478_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g187451187478_))))))
                     (let () (declare (not safe)) (_g187451187478_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g187451187478_)))))))
                                          (__tmp192354
                                           (let ((__tmp192355
                                                  (lambda (_g187581187584_
                                                           _g187582187587_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g187581187584_
                                                            _g187582187587_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp192355
                                                     '()
                                                     _L187344_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp192356 __tmp192354))))
                                 (_g187263187287_ _g187264187291_)))
                           _clause187281187340_
                           _hd187271187308_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop187276187320_
                                                   _target187273187314_
                                                   '()))
                                                (_g187263187287_
                                                 _g187264187291_)))))
                                      (_g187263187287_ _g187264187291_))))
                              (_g187263187287_ _g187264187291_))))
                      (_g187263187287_ _g187264187291_)))))
          (_g187262187590_ _stx187260_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj192327
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
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192327
           'gxc#symbol-table::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192327
           'symbol-table
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192327
           '(gensyms bindings)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192327
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192327
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192327
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192327
           ':init!
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp192366 |gxc[1]#_g192367_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192327
           __tmp192366
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp192368 |gxc[1]#_g192369_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192327
           __tmp192368
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp192370 |gxc[1]#_g192371_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192327
           __tmp192370
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp192372
               (let ((__tmp192377
                      (let ((__tmp192378 |gxc[1]#_g192379_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp192378)))
                     (__tmp192373
                      (let ((__tmp192374
                             (let ((__tmp192375 |gxc[1]#_g192376_|))
                               (declare (not safe))
                               (cons 'bindings __tmp192375))))
                        (declare (not safe))
                        (cons __tmp192374 '()))))
                 (declare (not safe))
                 (cons __tmp192377 __tmp192373))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192327
           __tmp192372
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp192380
               (let ((__tmp192385
                      (let ((__tmp192386 |gxc[1]#_g192387_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp192386)))
                     (__tmp192381
                      (let ((__tmp192382
                             (let ((__tmp192383 |gxc[1]#_g192384_|))
                               (declare (not safe))
                               (cons 'bindings __tmp192383))))
                        (declare (not safe))
                        (cons __tmp192382 '()))))
                 (declare (not safe))
                 (cons __tmp192385 __tmp192381))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192327
           __tmp192380
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp192388
               (let ((__tmp192393
                      (let ((__tmp192394 |gxc[1]#_g192395_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp192394)))
                     (__tmp192389
                      (let ((__tmp192390
                             (let ((__tmp192391 |gxc[1]#_g192392_|))
                               (declare (not safe))
                               (cons 'bindings __tmp192391))))
                        (declare (not safe))
                        (cons __tmp192390 '()))))
                 (declare (not safe))
                 (cons __tmp192393 __tmp192389))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192327
           __tmp192388
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp192396
               (let ((__tmp192401
                      (let ((__tmp192402 |gxc[1]#_g192403_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp192402)))
                     (__tmp192397
                      (let ((__tmp192398
                             (let ((__tmp192399 |gxc[1]#_g192400_|))
                               (declare (not safe))
                               (cons 'bindings __tmp192399))))
                        (declare (not safe))
                        (cons __tmp192398 '()))))
                 (declare (not safe))
                 (cons __tmp192401 __tmp192397))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192327
           __tmp192396
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj192327))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx187596_)
        (let* ((_g187600187614_
                (lambda (_g187601187610_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g187601187610_))))
               (_g187599187655_
                (lambda (_g187601187618_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g187601187618_))
                      (let ((_e187605187621_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g187601187618_))))
                        (let ((_hd187604187625_
                               (let ()
                                 (declare (not safe))
                                 (##car _e187605187621_)))
                              (_tl187603187628_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e187605187621_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl187603187628_))
                              (let ((_e187608187631_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl187603187628_))))
                                (let ((_hd187607187635_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e187608187631_)))
                                      (_tl187606187638_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e187608187631_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl187606187638_))
                                      ((lambda (_L187641_)
                                         (let ((__tmp192411
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp192404
                                                (let ((__tmp192410
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp192405
                                                       (let ((__tmp192406
                                                              (let ((__tmp192409
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp192407
                             (let ((__tmp192408
                                    (let ()
                                      (declare (not safe))
                                      (cons _L187641_ '()))))
                               (declare (not safe))
                               (cons '() __tmp192408))))
                        (declare (not safe))
                        (cons __tmp192409 __tmp192407))))
                 (declare (not safe))
                 (cons __tmp192406 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp192410
                                                        __tmp192405))))
                                           (declare (not safe))
                                           (cons __tmp192411 __tmp192404)))
                                       _hd187607187635_)
                                      (_g187600187614_ _g187601187618_))))
                              (_g187600187614_ _g187601187618_))))
                      (_g187600187614_ _g187601187618_)))))
          (_g187599187655_ _$stx187596_))))))
