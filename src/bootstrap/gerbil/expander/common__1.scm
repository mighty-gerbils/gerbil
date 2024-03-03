(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g80373_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80375_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80377_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80382_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80385_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80390_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80393_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80398_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80401_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80406_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80409_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g80516_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj80368
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
           __obj80368
           'gerbil#AST::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80368
           'syntax
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80368
           '(e source)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80368
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80368
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80368
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80368
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80368
           '#f
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp80372 |gx[1]#_g80373_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80368
           __tmp80372
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp80374 |gx[1]#_g80375_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80368
           __tmp80374
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp80376 |gx[1]#_g80377_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80368
           __tmp80376
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp80378
               (let ((__tmp80383
                      (let ((__tmp80384 |gx[1]#_g80385_|))
                        (declare (not safe))
                        (cons 'e __tmp80384)))
                     (__tmp80379
                      (let ((__tmp80380
                             (let ((__tmp80381 |gx[1]#_g80382_|))
                               (declare (not safe))
                               (cons 'source __tmp80381))))
                        (declare (not safe))
                        (cons __tmp80380 '()))))
                 (declare (not safe))
                 (cons __tmp80383 __tmp80379))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80368
           __tmp80378
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp80386
               (let ((__tmp80391
                      (let ((__tmp80392 |gx[1]#_g80393_|))
                        (declare (not safe))
                        (cons 'e __tmp80392)))
                     (__tmp80387
                      (let ((__tmp80388
                             (let ((__tmp80389 |gx[1]#_g80390_|))
                               (declare (not safe))
                               (cons 'source __tmp80389))))
                        (declare (not safe))
                        (cons __tmp80388 '()))))
                 (declare (not safe))
                 (cons __tmp80391 __tmp80387))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80368
           __tmp80386
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp80394
               (let ((__tmp80399
                      (let ((__tmp80400 |gx[1]#_g80401_|))
                        (declare (not safe))
                        (cons 'e __tmp80400)))
                     (__tmp80395
                      (let ((__tmp80396
                             (let ((__tmp80397 |gx[1]#_g80398_|))
                               (declare (not safe))
                               (cons 'source __tmp80397))))
                        (declare (not safe))
                        (cons __tmp80396 '()))))
                 (declare (not safe))
                 (cons __tmp80399 __tmp80395))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80368
           __tmp80394
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp80402
               (let ((__tmp80407
                      (let ((__tmp80408 |gx[1]#_g80409_|))
                        (declare (not safe))
                        (cons 'e __tmp80408)))
                     (__tmp80403
                      (let ((__tmp80404
                             (let ((__tmp80405 |gx[1]#_g80406_|))
                               (declare (not safe))
                               (cons 'source __tmp80405))))
                        (declare (not safe))
                        (cons __tmp80404 '()))))
                 (declare (not safe))
                 (cons __tmp80407 __tmp80403))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj80368
           __tmp80402
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj80368))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx78988_)
        (let* ((_g7899279006_
                (lambda (_g7899379002_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g7899379002_)))
               (_g7899179048_
                (lambda (_g7899379010_)
                  (if (gx#stx-pair? _g7899379010_)
                      (let ((_e7899779013_ (gx#syntax-e _g7899379010_)))
                        (let ((_hd7899679017_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7899779013_)))
                              (_tl7899579020_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7899779013_))))
                          (if (gx#stx-pair? _tl7899579020_)
                              (let ((_e7900079023_
                                     (gx#syntax-e _tl7899579020_)))
                                (let ((_hd7899979027_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7900079023_)))
                                      (_tl7899879030_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7900079023_))))
                                  (if (gx#stx-null? _tl7899879030_)
                                      ((lambda (_L79033_)
                                         (let ((__tmp80419
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp80410
                                                (let ((__tmp80416
                                                       (let ((__tmp80418
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp80417
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L79033_ '()))))
                 (declare (not safe))
                 (cons __tmp80418 __tmp80417)))
              (__tmp80411
               (let ((__tmp80412
                      (let ((__tmp80415 (gx#datum->syntax '#f 'error))
                            (__tmp80413
                             (let ((__tmp80414
                                    (let ()
                                      (declare (not safe))
                                      (cons _L79033_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp80414))))
                        (declare (not safe))
                        (cons __tmp80415 __tmp80413))))
                 (declare (not safe))
                 (cons __tmp80412 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp80416
                                                        __tmp80411))))
                                           (declare (not safe))
                                           (cons __tmp80419 __tmp80410)))
                                       _hd7899979027_)
                                      (_g7899279006_ _g7899379010_))))
                              (_g7899279006_ _g7899379010_))))
                      (_g7899279006_ _g7899379010_)))))
          (_g7899179048_ _$stx78988_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx79052_)
        (letrec ((_generate79055_
                  (lambda (_tgt79204_ _kws79206_ _clauses79207_)
                    (letrec ((_generate-clause79209_
                              (lambda (_hd80119_ _E80121_)
                                (let* ((___stx8027180272_ _hd80119_)
                                       (_g8012580152_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx8027180272_))))
                                  (let ((___kont8027480275_
                                         (lambda (_L80248_ _L80250_)
                                           (_generate179211_
                                            _hd80119_
                                            _L80250_
                                            '#t
                                            _L80248_
                                            _E80121_)))
                                        (___kont8027680277_
                                         (lambda (_L80200_ _L80202_ _L80203_)
                                           (_generate179211_
                                            _hd80119_
                                            _L80203_
                                            _L80202_
                                            _L80200_
                                            _E80121_)))
                                        (___kont8027880279_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx79052_
                                            _hd80119_))))
                                    (if (gx#stx-pair? ___stx8027180272_)
                                        (let ((_e8013180228_
                                               (gx#syntax-e
                                                ___stx8027180272_)))
                                          (let ((_tl8012980235_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e8013180228_)))
                                                (_hd8013080232_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e8013180228_))))
                                            (if (gx#stx-pair? _tl8012980235_)
                                                (let ((_e8013480238_
                                                       (gx#syntax-e
                                                        _tl8012980235_)))
                                                  (let ((_tl8013280245_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e8013480238_)))
                                                        (_hd8013380242_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e8013480238_))))
                                                    (if (gx#stx-null?
                                                         _tl8013280245_)
                                                        (___kont8027480275_
                                                         _hd8013380242_
                                                         _hd8013080232_)
                                                        (if (gx#stx-pair?
                                                             _tl8013280245_)
                                                            (let ((_e8014680190_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl8013280245_)))
                      (let ((_tl8014480197_
                             (let ()
                               (declare (not safe))
                               (##cdr _e8014680190_)))
                            (_hd8014580194_
                             (let ()
                               (declare (not safe))
                               (##car _e8014680190_))))
                        (if (gx#stx-null? _tl8014480197_)
                            (___kont8027680277_
                             _hd8014580194_
                             _hd8013380242_
                             _hd8013080232_)
                            (___kont8027880279_))))
                    (___kont8027880279_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont8027880279_))))
                                        (___kont8027880279_))))))
                             (_generate179211_
                              (lambda (_where79597_
                                       _hd79599_
                                       _fender79600_
                                       _body79601_
                                       _E79602_)
                                (letrec ((_recur79604_
                                          (lambda (_hd79607_
                                                   _tgt79609_
                                                   _K79610_)
                                            (let* ((___stx8031780318_
                                                    _hd79607_)
                                                   (_g7961379625_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx8031780318_))))
                                              (let ((___kont8032080321_
                                                     (lambda (_L79909_
                                                              _L79911_)
                                                       (let* ((_g7992279930_
                                                               (lambda (_g7992379926_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g7992379926_)))
                      (_g7992180111_
                       (lambda (_g7992379934_)
                         ((lambda (_L79937_)
                            (let ()
                              (let* ((_g7994979957_
                                      (lambda (_g7995079953_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g7995079953_)))
                                     (_g7994880107_
                                      (lambda (_g7995079961_)
                                        ((lambda (_L79964_)
                                           (let ()
                                             (let* ((_g7997779985_
                                                     (lambda (_g7997879981_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g7997879981_)))
                                                    (_g7997680103_
                                                     (lambda (_g7997879989_)
                                                       ((lambda (_L79992_)
                                                          (let ()
                                                            (let* ((_g8000580013_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g8000680009_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g8000680009_)))
                           (_g8000480099_
                            (lambda (_g8000680017_)
                              ((lambda (_L80020_)
                                 (let ()
                                   (let* ((_g8003380041_
                                           (lambda (_g8003480037_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g8003480037_)))
                                          (_g8003280095_
                                           (lambda (_g8003480045_)
                                             ((lambda (_L80048_)
                                                (let ()
                                                  (let* ((_g8006180069_
                                                          (lambda (_g8006280065_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g8006280065_)))
                                                         (_g8006080091_
                                                          (lambda (_g8006280073_)
                                                            ((lambda (_L80076_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp80452 (gx#datum->syntax '#f 'if))
                                 (__tmp80420
                                  (let ((__tmp80449
                                         (let ((__tmp80451
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp80450
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L79937_ '()))))
                                           (declare (not safe))
                                           (cons __tmp80451 __tmp80450)))
                                        (__tmp80421
                                         (let ((__tmp80423
                                                (let ((__tmp80448
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp80424
                                                       (let ((__tmp80442
                                                              (let ((__tmp80443
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp80444
                                    (let ((__tmp80445
                                           (let ((__tmp80447
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp80446
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L79937_ '()))))
                                             (declare (not safe))
                                             (cons __tmp80447 __tmp80446))))
                                      (declare (not safe))
                                      (cons __tmp80445 '()))))
                               (declare (not safe))
                               (cons _L79964_ __tmp80444))))
                        (declare (not safe))
                        (cons __tmp80443 '())))
                     (__tmp80425
                      (let ((__tmp80426
                             (let ((__tmp80441 (gx#datum->syntax '#f 'let))
                                   (__tmp80427
                                    (let ((__tmp80429
                                           (let ((__tmp80436
                                                  (let ((__tmp80437
                                                         (let ((__tmp80438
                                                                (let ((__tmp80440
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp80439
                               (let ()
                                 (declare (not safe))
                                 (cons _L79964_ '()))))
                          (declare (not safe))
                          (cons __tmp80440 __tmp80439))))
                   (declare (not safe))
                   (cons __tmp80438 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L79992_
                                                          __tmp80437)))
                                                 (__tmp80430
                                                  (let ((__tmp80431
                                                         (let ((__tmp80432
                                                                (let ((__tmp80433
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp80435 (gx#datum->syntax '#f '##cdr))
                                     (__tmp80434
                                      (let ()
                                        (declare (not safe))
                                        (cons _L79964_ '()))))
                                 (declare (not safe))
                                 (cons __tmp80435 __tmp80434))))
                          (declare (not safe))
                          (cons __tmp80433 '()))))
                   (declare (not safe))
                   (cons _L80020_ __tmp80432))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp80431 '()))))
                                             (declare (not safe))
                                             (cons __tmp80436 __tmp80430)))
                                          (__tmp80428
                                           (let ()
                                             (declare (not safe))
                                             (cons _L80048_ '()))))
                                      (declare (not safe))
                                      (cons __tmp80429 __tmp80428))))
                               (declare (not safe))
                               (cons __tmp80441 __tmp80427))))
                        (declare (not safe))
                        (cons __tmp80426 '()))))
                 (declare (not safe))
                 (cons __tmp80442 __tmp80425))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp80448
                                                        __tmp80424)))
                                               (__tmp80422
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L80076_ '()))))
                                           (declare (not safe))
                                           (cons __tmp80423 __tmp80422))))
                                    (declare (not safe))
                                    (cons __tmp80449 __tmp80421))))
                             (declare (not safe))
                             (cons __tmp80452 __tmp80420)))))
                     _g8006280073_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g8006080091_ _E79602_))))
                                              _g8003480045_))))
                                     (_g8003280095_
                                      (_recur79604_
                                       _L79911_
                                       _L79992_
                                       (_recur79604_
                                        _L79909_
                                        _L80020_
                                        _K79610_))))))
                               _g8000680017_))))
                      (_g8000480099_ (gx#genident 'tl)))))
                _g7997879989_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g7997680103_
                                                (gx#genident 'hd)))))
                                         _g7995079961_))))
                                (_g7994880107_ (gx#genident 'e)))))
                          _g7992379934_))))
                 (_g7992180111_ _tgt79609_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont8032280323_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd79607_)
                                                           (if (gx#underscore?
                                                                _hd79607_)
                                                               _K79610_
                                                               (if (let ((__tmp80497
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g7963579637_)
                                    (gx#bound-identifier=?
                                     _g7963579637_
                                     _hd79607_))))
                             (declare (not safe))
                             (find __tmp80497 _kws79206_))
                           (let* ((_g7964179656_
                                   (lambda (_g7964279652_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7964279652_)))
                                  (_g7964079707_
                                   (lambda (_g7964279660_)
                                     (if (gx#stx-pair? _g7964279660_)
                                         (let ((_e7964779663_
                                                (gx#syntax-e _g7964279660_)))
                                           (let ((_hd7964679667_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7964779663_)))
                                                 (_tl7964579670_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7964779663_))))
                                             (if (gx#stx-pair? _tl7964579670_)
                                                 (let ((_e7965079673_
                                                        (gx#syntax-e
                                                         _tl7964579670_)))
                                                   (let ((_hd7964979677_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7965079673_)))
                                                         (_tl7964879680_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7965079673_))))
                                                     (if (gx#stx-null?
                                                          _tl7964879680_)
                                                         ((lambda (_L79683_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L79685_)
                    (let ()
                      (let ((__tmp80496 (gx#datum->syntax '#f 'if))
                            (__tmp80479
                             (let ((__tmp80482
                                    (let ((__tmp80495
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp80483
                                           (let ((__tmp80492
                                                  (let ((__tmp80494
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp80493
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L79685_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp80494
                                                          __tmp80493)))
                                                 (__tmp80484
                                                  (let ((__tmp80485
                                                         (let ((__tmp80491
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp80486
                        (let ((__tmp80487
                               (let ((__tmp80488
                                      (let ((__tmp80490
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp80489
                                             (let ()
                                               (declare (not safe))
                                               (cons _L79683_ '()))))
                                        (declare (not safe))
                                        (cons __tmp80490 __tmp80489))))
                                 (declare (not safe))
                                 (cons __tmp80488 '()))))
                          (declare (not safe))
                          (cons _L79685_ __tmp80487))))
                   (declare (not safe))
                   (cons __tmp80491 __tmp80486))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp80485 '()))))
                                             (declare (not safe))
                                             (cons __tmp80492 __tmp80484))))
                                      (declare (not safe))
                                      (cons __tmp80495 __tmp80483)))
                                   (__tmp80480
                                    (let ((__tmp80481
                                           (let ()
                                             (declare (not safe))
                                             (cons _E79602_ '()))))
                                      (declare (not safe))
                                      (cons _K79610_ __tmp80481))))
                               (declare (not safe))
                               (cons __tmp80482 __tmp80480))))
                        (declare (not safe))
                        (cons __tmp80496 __tmp80479))))
                  _hd7964979677_
                  _hd7964679667_)
                 (_g7964179656_ _g7964279660_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7964179656_
                                                  _g7964279660_))))
                                         (_g7964179656_ _g7964279660_)))))
                             (_g7964079707_ (list _tgt79609_ _hd79607_)))
                           (let* ((_g7971179726_
                                   (lambda (_g7971279722_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7971279722_)))
                                  (_g7971079770_
                                   (lambda (_g7971279730_)
                                     (if (gx#stx-pair? _g7971279730_)
                                         (let ((_e7971779733_
                                                (gx#syntax-e _g7971279730_)))
                                           (let ((_hd7971679737_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7971779733_)))
                                                 (_tl7971579740_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7971779733_))))
                                             (if (gx#stx-pair? _tl7971579740_)
                                                 (let ((_e7972079743_
                                                        (gx#syntax-e
                                                         _tl7971579740_)))
                                                   (let ((_hd7971979747_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7972079743_)))
                                                         (_tl7971879750_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7972079743_))))
                                                     (if (gx#stx-null?
                                                          _tl7971879750_)
                                                         ((lambda (_L79753_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L79755_)
                    (let ()
                      (let ((__tmp80478 (gx#datum->syntax '#f 'let))
                            (__tmp80473
                             (let ((__tmp80475
                                    (let ((__tmp80476
                                           (let ((__tmp80477
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L79755_ '()))))
                                             (declare (not safe))
                                             (cons _L79753_ __tmp80477))))
                                      (declare (not safe))
                                      (cons __tmp80476 '())))
                                   (__tmp80474
                                    (let ()
                                      (declare (not safe))
                                      (cons _K79610_ '()))))
                               (declare (not safe))
                               (cons __tmp80475 __tmp80474))))
                        (declare (not safe))
                        (cons __tmp80478 __tmp80473))))
                  _hd7971979747_
                  _hd7971679737_)
                 (_g7971179726_ _g7971279730_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7971179726_
                                                  _g7971279730_))))
                                         (_g7971179726_ _g7971279730_)))))
                             (_g7971079770_ (list _tgt79609_ _hd79607_)))))
                   (if (gx#stx-null? _hd79607_)
                       (let* ((_g7977479782_
                               (lambda (_g7977579778_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g7977579778_)))
                              (_g7977379800_
                               (lambda (_g7977579786_)
                                 ((lambda (_L79789_)
                                    (let ()
                                      (let ((__tmp80472
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp80466
                                             (let ((__tmp80469
                                                    (let ((__tmp80471
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp80470
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L79789_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp80471 __tmp80470)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp80467
                                                    (let ((__tmp80468
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E79602_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K79610_ __tmp80468))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp80469 __tmp80467))))
                                        (declare (not safe))
                                        (cons __tmp80472 __tmp80466))))
                                  _g7977579786_))))
                         (_g7977379800_ _tgt79609_))
                       (if (gx#stx-datum? _hd79607_)
                           (let* ((_g7980479823_
                                   (lambda (_g7980579819_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7980579819_)))
                                  (_g7980379881_
                                   (lambda (_g7980579827_)
                                     (if (gx#stx-pair? _g7980579827_)
                                         (let ((_e7981179830_
                                                (gx#syntax-e _g7980579827_)))
                                           (let ((_hd7981079834_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7981179830_)))
                                                 (_tl7980979837_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7981179830_))))
                                             (if (gx#stx-pair? _tl7980979837_)
                                                 (let ((_e7981479840_
                                                        (gx#syntax-e
                                                         _tl7980979837_)))
                                                   (let ((_hd7981379844_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7981479840_)))
                                                         (_tl7981279847_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7981479840_))))
                                                     (if (gx#stx-pair?
                                                          _tl7981279847_)
                                                         (let ((_e7981779850_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl7981279847_)))
                   (let ((_hd7981679854_
                          (let () (declare (not safe)) (##car _e7981779850_)))
                         (_tl7981579857_
                          (let () (declare (not safe)) (##cdr _e7981779850_))))
                     (if (gx#stx-null? _tl7981579857_)
                         ((lambda (_L79860_ _L79862_ _L79863_)
                            (let ()
                              (let ((__tmp80465 (gx#datum->syntax '#f 'if))
                                    (__tmp80453
                                     (let ((__tmp80456
                                            (let ((__tmp80457
                                                   (let ((__tmp80462
                                                          (let ((__tmp80464
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp80463
                         (let () (declare (not safe)) (cons _L79863_ '()))))
                    (declare (not safe))
                    (cons __tmp80464 __tmp80463)))
                 (__tmp80458
                  (let ((__tmp80459
                         (let ((__tmp80461 (gx#datum->syntax '#f 'quote))
                               (__tmp80460
                                (let ()
                                  (declare (not safe))
                                  (cons _L79862_ '()))))
                           (declare (not safe))
                           (cons __tmp80461 __tmp80460))))
                    (declare (not safe))
                    (cons __tmp80459 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp80462
                                                           __tmp80458))))
                                              (declare (not safe))
                                              (cons _L79860_ __tmp80457)))
                                           (__tmp80454
                                            (let ((__tmp80455
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E79602_ '()))))
                                              (declare (not safe))
                                              (cons _K79610_ __tmp80455))))
                                       (declare (not safe))
                                       (cons __tmp80456 __tmp80454))))
                                (declare (not safe))
                                (cons __tmp80465 __tmp80453))))
                          _hd7981679854_
                          _hd7981379844_
                          _hd7981079834_)
                         (_g7980479823_ _g7980579827_))))
                 (_g7980479823_ _g7980579827_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7980479823_
                                                  _g7980579827_))))
                                         (_g7980479823_ _g7980579827_)))))
                             (_g7980379881_
                              (list _tgt79609_
                                    _hd79607_
                                    (let ((_e79885_ (gx#stx-e _hd79607_)))
                                      (if (or (keyword? _e79885_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e79885_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e79885_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx79052_
                            _where79597_
                            _hd79607_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx8031780318_)
                                                    (let ((_e7961979899_
                                                           (gx#syntax-e
                                                            ___stx8031780318_)))
                                                      (let ((_tl7961779906_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e7961979899_)))
                    (_hd7961879903_
                     (let () (declare (not safe)) (##car _e7961979899_))))
                (___kont8032080321_ _tl7961779906_ _hd7961879903_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont8032280323_)))))))
                                  (_recur79604_
                                   _hd79599_
                                   _tgt79204_
                                   (let ((__tmp80501
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp80498
                                          (let ((__tmp80499
                                                 (let ((__tmp80500
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E79602_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body79601_
                                                         __tmp80500))))
                                            (declare (not safe))
                                            (cons _fender79600_ __tmp80499))))
                                     (declare (not safe))
                                     (cons __tmp80501 __tmp80498))))))
                             (_generate-clauses79212_
                              (lambda (_clauses79335_)
                                (let _lp79338_ ((_rest79341_ _clauses79335_)
                                                (_E79343_ (gx#genident 'E))
                                                (_r79344_ '()))
                                  (let* ((___stx8035380354_ _rest79341_)
                                         (_g7934779359_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx8035380354_))))
                                    (let ((___kont8035680357_
                                           (lambda (_L79424_ _L79426_)
                                             (let* ((___stx8033380334_
                                                     _L79426_)
                                                    (_g7943879449_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx8033380334_))))
                                               (let ((___kont8033680337_
                                                      (lambda (_L79578_)
                                                        (if (gx#stx-null?
                                                             _L79424_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L79578_)
                             (let ((__tmp80510 (gx#stx-null? _L79578_)))
                               (declare (not safe))
                               (not __tmp80510)))
                        (let ((__tmp80502
                               (let ((__tmp80503
                                      (let ((__tmp80504
                                             (gx#stx-wrap-source
                                              (let ((__tmp80509
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp80505
                                                     (let ((__tmp80506
                                                            (let ((__tmp80507
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp80508 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp80508 _L79578_))))
                      (declare (not safe))
                      (cons __tmp80507 '()))))
               (declare (not safe))
               (cons '() __tmp80506))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp80509 __tmp80505))
                                              (gx#stx-source _L79426_))))
                                        (declare (not safe))
                                        (cons __tmp80504 '()))))
                                 (declare (not safe))
                                 (cons _E79343_ __tmp80503))))
                          (declare (not safe))
                          (cons __tmp80502 _r79344_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx79052_
                         _L79426_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx79052_
                     _L79426_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont8033880339_
                                                      (lambda ()
                                                        (let* ((_g7946079468_
                                                                (lambda (_g7946179464_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g7946179464_)))
                       (_g7945979557_
                        (lambda (_g7946179472_)
                          ((lambda (_L79475_)
                             (let ()
                               (let* ((_g7949179499_
                                       (lambda (_g7949279495_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g7949279495_)))
                                      (_g7949079553_
                                       (lambda (_g7949279503_)
                                         ((lambda (_L79506_)
                                            (let ()
                                              (let* ((_g7951979527_
                                                      (lambda (_g7952079523_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g7952079523_)))
                                                     (_g7951879549_
                                                      (lambda (_g7952079531_)
                                                        ((lambda (_L79534_)
                                                           (let ()
                                                             (let ()
                                                               (_lp79338_
                                                                _L79424_
                                                                _L79475_
                                                                (let ((__tmp80511
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp80512
                                      (let ()
                                        (declare (not safe))
                                        (cons _L79534_ '()))))
                                 (declare (not safe))
                                 (cons _E79343_ __tmp80512))))
                          (declare (not safe))
                          (cons __tmp80511 _r79344_))))))
                 _g7952079531_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g7951879549_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp80515
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp80513
                                                         (let ((__tmp80514
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L79506_ '()))))
                   (declare (not safe))
                   (cons '() __tmp80514))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp80515
                                                          __tmp80513))
                                                  (gx#stx-source _L79426_))))))
                                          _g7949279503_))))
                                 (_g7949079553_
                                  (_generate-clause79209_
                                   _L79426_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L79475_ '())))))))
                           _g7946179472_))))
                  (_g7945979557_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx8033380334_)
                                                     (let ((_e7944379568_
                                                            (gx#syntax-e
                                                             ___stx8033380334_)))
                                                       (let ((_tl7944179575_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e7944379568_)))
                     (_hd7944279572_
                      (let () (declare (not safe)) (##car _e7944379568_))))
                 (if (gx#identifier? _hd7944279572_)
                     (if (gx#free-identifier=? |gx[1]#_g80516_| _hd7944279572_)
                         (___kont8033680337_ _tl7944179575_)
                         (___kont8033880339_))
                     (___kont8033880339_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont8033880339_))))))
                                          (___kont8035880359_
                                           (lambda ()
                                             (let* ((_g7937079378_
                                                     (lambda (_g7937179374_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g7937179374_)))
                                                    (_g7936979403_
                                                     (lambda (_g7937179382_)
                                                       ((lambda (_L79385_)
                                                          (let ()
                                                            (let ((__tmp80517
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp80518
                                  (let ((__tmp80519
                                         (gx#stx-wrap-source
                                          (let ((__tmp80527
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp80520
                                                 (let ((__tmp80521
                                                        (let ((__tmp80522
                                                               (let ((__tmp80526
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp80523
                              (let ((__tmp80524
                                     (let ((__tmp80525
                                            (let ()
                                              (declare (not safe))
                                              (cons _L79385_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp80525))))
                                (declare (not safe))
                                (cons '#f __tmp80524))))
                         (declare (not safe))
                         (cons __tmp80526 __tmp80523))))
                  (declare (not safe))
                  (cons __tmp80522 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp80521))))
                                            (declare (not safe))
                                            (cons __tmp80527 __tmp80520))
                                          (gx#stx-source _stx79052_))))
                                    (declare (not safe))
                                    (cons __tmp80519 '()))))
                             (declare (not safe))
                             (cons _E79343_ __tmp80518))))
                      (declare (not safe))
                      (cons __tmp80517 _r79344_))))
                _g7937179382_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g7936979403_ _tgt79204_)))))
                                      (if (gx#stx-pair? ___stx8035380354_)
                                          (let ((_e7935379414_
                                                 (gx#syntax-e
                                                  ___stx8035380354_)))
                                            (let ((_tl7935179421_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e7935379414_)))
                                                  (_hd7935279418_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e7935379414_))))
                                              (___kont8035680357_
                                               _tl7935179421_
                                               _hd7935279418_)))
                                          (___kont8035880359_))))))))
                      (let* ((_bind79214_
                              (_generate-clauses79212_ _clauses79207_))
                             (_g7921779234_
                              (lambda (_g7921879230_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g7921879230_)))
                             (_g7921679331_
                              (lambda (_g7921879238_)
                                (if (gx#stx-pair/null? _g7921879238_)
                                    (let ((_g80528_
                                           (gx#syntax-split-splice
                                            _g7921879238_
                                            '0)))
                                      (begin
                                        (let ((_g80529_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g80528_)
                                                     (##vector-length _g80528_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g80529_ 2)))
                                              (error "Context expects 2 values"
                                                     _g80529_)))
                                        (let ((_target7922079241_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g80528_ 0)))
                                              (_tl7922279244_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g80528_ 1))))
                                          (if (gx#stx-null? _tl7922279244_)
                                              (letrec ((_loop7922379247_
                                                        (lambda (_hd7922179251_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try7922779254_)
                  (if (gx#stx-pair? _hd7922179251_)
                      (let ((_e7922479257_ (gx#syntax-e _hd7922179251_)))
                        (let ((_lp-hd7922579261_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7922479257_)))
                              (_lp-tl7922679264_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7922479257_))))
                          (_loop7922379247_
                           _lp-tl7922679264_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd7922579261_ _bind-try7922779254_)))))
                      (let ((_bind-try7922879267_
                             (reverse _bind-try7922779254_)))
                        ((lambda (_L79271_)
                           (let ()
                             (let* ((_g7928979297_
                                     (lambda (_g7929079293_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g7929079293_)))
                                    (_g7928879327_
                                     (lambda (_g7929079301_)
                                       ((lambda (_L79304_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp80535
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp80530
                                                     (let ((__tmp80533
                                                            (let ((__tmp80534
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g7931879321_ _g7931979324_)
                             (let ()
                               (declare (not safe))
                               (cons _g7931879321_ _g7931979324_)))))
                      (declare (not safe))
                      (foldr1 __tmp80534 '() _L79271_)))
                   (__tmp80531
                    (let ((__tmp80532
                           (let () (declare (not safe)) (cons _L79304_ '()))))
                      (declare (not safe))
                      (cons __tmp80532 '()))))
               (declare (not safe))
               (cons __tmp80533 __tmp80531))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp80535
                                                      __tmp80530)))))
                                        _g7929079301_))))
                               (_g7928879327_
                                (car (let ()
                                       (declare (not safe))
                                       (last _bind79214_)))))))
                         _bind-try7922879267_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop7922379247_
                                                 _target7922079241_
                                                 '()))
                                              (_g7921779234_ _g7921879238_)))))
                                    (_g7921779234_ _g7921879238_)))))
                        (_g7921679331_ _bind79214_))))))
          (let* ((_g7905879077_
                  (lambda (_g7905979073_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g7905979073_)))
                 (_g7905779200_
                  (lambda (_g7905979081_)
                    (if (gx#stx-pair? _g7905979081_)
                        (let ((_e7906579084_ (gx#syntax-e _g7905979081_)))
                          (let ((_hd7906479088_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7906579084_)))
                                (_tl7906379091_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7906579084_))))
                            (if (gx#stx-pair? _tl7906379091_)
                                (let ((_e7906879094_
                                       (gx#syntax-e _tl7906379091_)))
                                  (let ((_hd7906779098_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e7906879094_)))
                                        (_tl7906679101_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e7906879094_))))
                                    (if (gx#stx-pair? _tl7906679101_)
                                        (let ((_e7907179104_
                                               (gx#syntax-e _tl7906679101_)))
                                          (let ((_hd7907079108_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e7907179104_)))
                                                (_tl7906979111_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e7907179104_))))
                                            ((lambda (_L79114_
                                                      _L79116_
                                                      _L79117_)
                                               (if (and (gx#identifier-list?
                                                         _L79116_)
                                                        (gx#stx-list?
                                                         _L79114_))
                                                   (let* ((_g7913579143_
                                                           (lambda (_g7913679139_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g7913679139_)))
                                                          (_g7913479196_
                                                           (lambda (_g7913679147_)
                                                             ((lambda (_L79150_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g7916279170_
                                  (lambda (_g7916379166_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g7916379166_)))
                                 (_g7916179192_
                                  (lambda (_g7916379174_)
                                    ((lambda (_L79177_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp80541
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp80536
                                                  (let ((__tmp80538
                                                         (let ((__tmp80539
                                                                (let ((__tmp80540
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L79117_ '()))))
                          (declare (not safe))
                          (cons _L79150_ __tmp80540))))
                   (declare (not safe))
                   (cons __tmp80539 '())))
                (__tmp80537 (let () (declare (not safe)) (cons _L79177_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp80538
                                                          __tmp80537))))
                                             (declare (not safe))
                                             (cons __tmp80541 __tmp80536)))))
                                     _g7916379174_))))
                            (_g7916179192_
                             (_generate79055_
                              _L79150_
                              (gx#syntax->list _L79116_)
                              _L79114_)))))
                      _g7913679147_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g7913479196_
                                                      (gx#genident 'e)))
                                                   (_g7905879077_
                                                    _g7905979081_)))
                                             _tl7906979111_
                                             _hd7907079108_
                                             _hd7906779098_)))
                                        (_g7905879077_ _g7905979081_))))
                                (_g7905879077_ _g7905979081_))))
                        (_g7905879077_ _g7905979081_)))))
            (_g7905779200_ _stx79052_)))))))
