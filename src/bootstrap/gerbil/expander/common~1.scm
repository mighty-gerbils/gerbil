(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g81439_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81441_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81443_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81448_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81451_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81456_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81459_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81464_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81467_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81472_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81475_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81582_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj81434
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core/mop~MOP-2#class-type-info::t
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
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81434
           'gerbil#AST::t
           '1
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81434
           'syntax
           '2
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81434
           '(e source)
           '4
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81434
           '()
           '3
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81434
           '#t
           '5
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81434
           '#f
           '6
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81434
           '#f
           '8
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81434
           '#f
           '9
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81438 |gx[1]#_g81439_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81434
           __tmp81438
           '10
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81440 |gx[1]#_g81441_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81434
           __tmp81440
           '11
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81442 |gx[1]#_g81443_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81434
           __tmp81442
           '12
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81444
               (let ((__tmp81449
                      (let ((__tmp81450 |gx[1]#_g81451_|))
                        (declare (not safe))
                        (cons 'e __tmp81450)))
                     (__tmp81445
                      (let ((__tmp81446
                             (let ((__tmp81447 |gx[1]#_g81448_|))
                               (declare (not safe))
                               (cons 'source __tmp81447))))
                        (declare (not safe))
                        (cons __tmp81446 '()))))
                 (declare (not safe))
                 (cons __tmp81449 __tmp81445))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81434
           __tmp81444
           '13
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81452
               (let ((__tmp81457
                      (let ((__tmp81458 |gx[1]#_g81459_|))
                        (declare (not safe))
                        (cons 'e __tmp81458)))
                     (__tmp81453
                      (let ((__tmp81454
                             (let ((__tmp81455 |gx[1]#_g81456_|))
                               (declare (not safe))
                               (cons 'source __tmp81455))))
                        (declare (not safe))
                        (cons __tmp81454 '()))))
                 (declare (not safe))
                 (cons __tmp81457 __tmp81453))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81434
           __tmp81452
           '14
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81460
               (let ((__tmp81465
                      (let ((__tmp81466 |gx[1]#_g81467_|))
                        (declare (not safe))
                        (cons 'e __tmp81466)))
                     (__tmp81461
                      (let ((__tmp81462
                             (let ((__tmp81463 |gx[1]#_g81464_|))
                               (declare (not safe))
                               (cons 'source __tmp81463))))
                        (declare (not safe))
                        (cons __tmp81462 '()))))
                 (declare (not safe))
                 (cons __tmp81465 __tmp81461))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81434
           __tmp81460
           '15
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp81468
               (let ((__tmp81473
                      (let ((__tmp81474 |gx[1]#_g81475_|))
                        (declare (not safe))
                        (cons 'e __tmp81474)))
                     (__tmp81469
                      (let ((__tmp81470
                             (let ((__tmp81471 |gx[1]#_g81472_|))
                               (declare (not safe))
                               (cons 'source __tmp81471))))
                        (declare (not safe))
                        (cons __tmp81470 '()))))
                 (declare (not safe))
                 (cons __tmp81473 __tmp81469))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81434
           __tmp81468
           '16
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        __obj81434))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx80054_)
        (let* ((_g8005880072_
                (lambda (_g8005980068_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g8005980068_)))
               (_g8005780114_
                (lambda (_g8005980076_)
                  (if (gx#stx-pair? _g8005980076_)
                      (let ((_e8006380079_ (gx#syntax-e _g8005980076_)))
                        (let ((_hd8006280083_
                               (let ()
                                 (declare (not safe))
                                 (##car _e8006380079_)))
                              (_tl8006180086_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e8006380079_))))
                          (if (gx#stx-pair? _tl8006180086_)
                              (let ((_e8006680089_
                                     (gx#syntax-e _tl8006180086_)))
                                (let ((_hd8006580093_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e8006680089_)))
                                      (_tl8006480096_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e8006680089_))))
                                  (if (gx#stx-null? _tl8006480096_)
                                      ((lambda (_L80099_)
                                         (let ((__tmp81485
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp81476
                                                (let ((__tmp81482
                                                       (let ((__tmp81484
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp81483
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L80099_ '()))))
                 (declare (not safe))
                 (cons __tmp81484 __tmp81483)))
              (__tmp81477
               (let ((__tmp81478
                      (let ((__tmp81481 (gx#datum->syntax '#f 'error))
                            (__tmp81479
                             (let ((__tmp81480
                                    (let ()
                                      (declare (not safe))
                                      (cons _L80099_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp81480))))
                        (declare (not safe))
                        (cons __tmp81481 __tmp81479))))
                 (declare (not safe))
                 (cons __tmp81478 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp81482
                                                        __tmp81477))))
                                           (declare (not safe))
                                           (cons __tmp81485 __tmp81476)))
                                       _hd8006580093_)
                                      (_g8005880072_ _g8005980076_))))
                              (_g8005880072_ _g8005980076_))))
                      (_g8005880072_ _g8005980076_)))))
          (_g8005780114_ _$stx80054_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx80118_)
        (letrec ((_generate80121_
                  (lambda (_tgt80270_ _kws80272_ _clauses80273_)
                    (letrec ((_generate-clause80275_
                              (lambda (_hd81185_ _E81187_)
                                (let* ((___stx8133781338_ _hd81185_)
                                       (_g8119181218_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx8133781338_))))
                                  (let ((___kont8134081341_
                                         (lambda (_L81314_ _L81316_)
                                           (_generate180277_
                                            _hd81185_
                                            _L81316_
                                            '#t
                                            _L81314_
                                            _E81187_)))
                                        (___kont8134281343_
                                         (lambda (_L81266_ _L81268_ _L81269_)
                                           (_generate180277_
                                            _hd81185_
                                            _L81269_
                                            _L81268_
                                            _L81266_
                                            _E81187_)))
                                        (___kont8134481345_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx80118_
                                            _hd81185_))))
                                    (if (gx#stx-pair? ___stx8133781338_)
                                        (let ((_e8119781294_
                                               (gx#syntax-e
                                                ___stx8133781338_)))
                                          (let ((_tl8119581301_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e8119781294_)))
                                                (_hd8119681298_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e8119781294_))))
                                            (if (gx#stx-pair? _tl8119581301_)
                                                (let ((_e8120081304_
                                                       (gx#syntax-e
                                                        _tl8119581301_)))
                                                  (let ((_tl8119881311_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e8120081304_)))
                                                        (_hd8119981308_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e8120081304_))))
                                                    (if (gx#stx-null?
                                                         _tl8119881311_)
                                                        (___kont8134081341_
                                                         _hd8119981308_
                                                         _hd8119681298_)
                                                        (if (gx#stx-pair?
                                                             _tl8119881311_)
                                                            (let ((_e8121281256_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl8119881311_)))
                      (let ((_tl8121081263_
                             (let ()
                               (declare (not safe))
                               (##cdr _e8121281256_)))
                            (_hd8121181260_
                             (let ()
                               (declare (not safe))
                               (##car _e8121281256_))))
                        (if (gx#stx-null? _tl8121081263_)
                            (___kont8134281343_
                             _hd8121181260_
                             _hd8119981308_
                             _hd8119681298_)
                            (___kont8134481345_))))
                    (___kont8134481345_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont8134481345_))))
                                        (___kont8134481345_))))))
                             (_generate180277_
                              (lambda (_where80663_
                                       _hd80665_
                                       _fender80666_
                                       _body80667_
                                       _E80668_)
                                (letrec ((_recur80670_
                                          (lambda (_hd80673_
                                                   _tgt80675_
                                                   _K80676_)
                                            (let* ((___stx8138381384_
                                                    _hd80673_)
                                                   (_g8067980691_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx8138381384_))))
                                              (let ((___kont8138681387_
                                                     (lambda (_L80975_
                                                              _L80977_)
                                                       (let* ((_g8098880996_
                                                               (lambda (_g8098980992_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g8098980992_)))
                      (_g8098781177_
                       (lambda (_g8098981000_)
                         ((lambda (_L81003_)
                            (let ()
                              (let* ((_g8101581023_
                                      (lambda (_g8101681019_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g8101681019_)))
                                     (_g8101481173_
                                      (lambda (_g8101681027_)
                                        ((lambda (_L81030_)
                                           (let ()
                                             (let* ((_g8104381051_
                                                     (lambda (_g8104481047_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g8104481047_)))
                                                    (_g8104281169_
                                                     (lambda (_g8104481055_)
                                                       ((lambda (_L81058_)
                                                          (let ()
                                                            (let* ((_g8107181079_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g8107281075_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g8107281075_)))
                           (_g8107081165_
                            (lambda (_g8107281083_)
                              ((lambda (_L81086_)
                                 (let ()
                                   (let* ((_g8109981107_
                                           (lambda (_g8110081103_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g8110081103_)))
                                          (_g8109881161_
                                           (lambda (_g8110081111_)
                                             ((lambda (_L81114_)
                                                (let ()
                                                  (let* ((_g8112781135_
                                                          (lambda (_g8112881131_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g8112881131_)))
                                                         (_g8112681157_
                                                          (lambda (_g8112881139_)
                                                            ((lambda (_L81142_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp81518 (gx#datum->syntax '#f 'if))
                                 (__tmp81486
                                  (let ((__tmp81515
                                         (let ((__tmp81517
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp81516
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L81003_ '()))))
                                           (declare (not safe))
                                           (cons __tmp81517 __tmp81516)))
                                        (__tmp81487
                                         (let ((__tmp81489
                                                (let ((__tmp81514
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp81490
                                                       (let ((__tmp81508
                                                              (let ((__tmp81509
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp81510
                                    (let ((__tmp81511
                                           (let ((__tmp81513
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp81512
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L81003_ '()))))
                                             (declare (not safe))
                                             (cons __tmp81513 __tmp81512))))
                                      (declare (not safe))
                                      (cons __tmp81511 '()))))
                               (declare (not safe))
                               (cons _L81030_ __tmp81510))))
                        (declare (not safe))
                        (cons __tmp81509 '())))
                     (__tmp81491
                      (let ((__tmp81492
                             (let ((__tmp81507 (gx#datum->syntax '#f 'let))
                                   (__tmp81493
                                    (let ((__tmp81495
                                           (let ((__tmp81502
                                                  (let ((__tmp81503
                                                         (let ((__tmp81504
                                                                (let ((__tmp81506
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp81505
                               (let ()
                                 (declare (not safe))
                                 (cons _L81030_ '()))))
                          (declare (not safe))
                          (cons __tmp81506 __tmp81505))))
                   (declare (not safe))
                   (cons __tmp81504 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L81058_
                                                          __tmp81503)))
                                                 (__tmp81496
                                                  (let ((__tmp81497
                                                         (let ((__tmp81498
                                                                (let ((__tmp81499
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp81501 (gx#datum->syntax '#f '##cdr))
                                     (__tmp81500
                                      (let ()
                                        (declare (not safe))
                                        (cons _L81030_ '()))))
                                 (declare (not safe))
                                 (cons __tmp81501 __tmp81500))))
                          (declare (not safe))
                          (cons __tmp81499 '()))))
                   (declare (not safe))
                   (cons _L81086_ __tmp81498))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp81497 '()))))
                                             (declare (not safe))
                                             (cons __tmp81502 __tmp81496)))
                                          (__tmp81494
                                           (let ()
                                             (declare (not safe))
                                             (cons _L81114_ '()))))
                                      (declare (not safe))
                                      (cons __tmp81495 __tmp81494))))
                               (declare (not safe))
                               (cons __tmp81507 __tmp81493))))
                        (declare (not safe))
                        (cons __tmp81492 '()))))
                 (declare (not safe))
                 (cons __tmp81508 __tmp81491))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp81514
                                                        __tmp81490)))
                                               (__tmp81488
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L81142_ '()))))
                                           (declare (not safe))
                                           (cons __tmp81489 __tmp81488))))
                                    (declare (not safe))
                                    (cons __tmp81515 __tmp81487))))
                             (declare (not safe))
                             (cons __tmp81518 __tmp81486)))))
                     _g8112881139_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g8112681157_ _E80668_))))
                                              _g8110081111_))))
                                     (_g8109881161_
                                      (_recur80670_
                                       _L80977_
                                       _L81058_
                                       (_recur80670_
                                        _L80975_
                                        _L81086_
                                        _K80676_))))))
                               _g8107281083_))))
                      (_g8107081165_ (gx#genident 'tl)))))
                _g8104481055_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g8104281169_
                                                (gx#genident 'hd)))))
                                         _g8101681027_))))
                                (_g8101481173_ (gx#genident 'e)))))
                          _g8098981000_))))
                 (_g8098781177_ _tgt80675_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont8138881389_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd80673_)
                                                           (if (gx#underscore?
                                                                _hd80673_)
                                                               _K80676_
                                                               (if (let ((__tmp81563
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g8070180703_)
                                    (gx#bound-identifier=?
                                     _g8070180703_
                                     _hd80673_))))
                             (declare (not safe))
                             (find __tmp81563 _kws80272_))
                           (let* ((_g8070780722_
                                   (lambda (_g8070880718_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g8070880718_)))
                                  (_g8070680773_
                                   (lambda (_g8070880726_)
                                     (if (gx#stx-pair? _g8070880726_)
                                         (let ((_e8071380729_
                                                (gx#syntax-e _g8070880726_)))
                                           (let ((_hd8071280733_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e8071380729_)))
                                                 (_tl8071180736_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e8071380729_))))
                                             (if (gx#stx-pair? _tl8071180736_)
                                                 (let ((_e8071680739_
                                                        (gx#syntax-e
                                                         _tl8071180736_)))
                                                   (let ((_hd8071580743_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e8071680739_)))
                                                         (_tl8071480746_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e8071680739_))))
                                                     (if (gx#stx-null?
                                                          _tl8071480746_)
                                                         ((lambda (_L80749_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L80751_)
                    (let ()
                      (let ((__tmp81562 (gx#datum->syntax '#f 'if))
                            (__tmp81545
                             (let ((__tmp81548
                                    (let ((__tmp81561
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp81549
                                           (let ((__tmp81558
                                                  (let ((__tmp81560
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp81559
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L80751_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp81560
                                                          __tmp81559)))
                                                 (__tmp81550
                                                  (let ((__tmp81551
                                                         (let ((__tmp81557
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp81552
                        (let ((__tmp81553
                               (let ((__tmp81554
                                      (let ((__tmp81556
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp81555
                                             (let ()
                                               (declare (not safe))
                                               (cons _L80749_ '()))))
                                        (declare (not safe))
                                        (cons __tmp81556 __tmp81555))))
                                 (declare (not safe))
                                 (cons __tmp81554 '()))))
                          (declare (not safe))
                          (cons _L80751_ __tmp81553))))
                   (declare (not safe))
                   (cons __tmp81557 __tmp81552))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp81551 '()))))
                                             (declare (not safe))
                                             (cons __tmp81558 __tmp81550))))
                                      (declare (not safe))
                                      (cons __tmp81561 __tmp81549)))
                                   (__tmp81546
                                    (let ((__tmp81547
                                           (let ()
                                             (declare (not safe))
                                             (cons _E80668_ '()))))
                                      (declare (not safe))
                                      (cons _K80676_ __tmp81547))))
                               (declare (not safe))
                               (cons __tmp81548 __tmp81546))))
                        (declare (not safe))
                        (cons __tmp81562 __tmp81545))))
                  _hd8071580743_
                  _hd8071280733_)
                 (_g8070780722_ _g8070880726_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g8070780722_
                                                  _g8070880726_))))
                                         (_g8070780722_ _g8070880726_)))))
                             (_g8070680773_ (list _tgt80675_ _hd80673_)))
                           (let* ((_g8077780792_
                                   (lambda (_g8077880788_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g8077880788_)))
                                  (_g8077680836_
                                   (lambda (_g8077880796_)
                                     (if (gx#stx-pair? _g8077880796_)
                                         (let ((_e8078380799_
                                                (gx#syntax-e _g8077880796_)))
                                           (let ((_hd8078280803_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e8078380799_)))
                                                 (_tl8078180806_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e8078380799_))))
                                             (if (gx#stx-pair? _tl8078180806_)
                                                 (let ((_e8078680809_
                                                        (gx#syntax-e
                                                         _tl8078180806_)))
                                                   (let ((_hd8078580813_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e8078680809_)))
                                                         (_tl8078480816_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e8078680809_))))
                                                     (if (gx#stx-null?
                                                          _tl8078480816_)
                                                         ((lambda (_L80819_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L80821_)
                    (let ()
                      (let ((__tmp81544 (gx#datum->syntax '#f 'let))
                            (__tmp81539
                             (let ((__tmp81541
                                    (let ((__tmp81542
                                           (let ((__tmp81543
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L80821_ '()))))
                                             (declare (not safe))
                                             (cons _L80819_ __tmp81543))))
                                      (declare (not safe))
                                      (cons __tmp81542 '())))
                                   (__tmp81540
                                    (let ()
                                      (declare (not safe))
                                      (cons _K80676_ '()))))
                               (declare (not safe))
                               (cons __tmp81541 __tmp81540))))
                        (declare (not safe))
                        (cons __tmp81544 __tmp81539))))
                  _hd8078580813_
                  _hd8078280803_)
                 (_g8077780792_ _g8077880796_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g8077780792_
                                                  _g8077880796_))))
                                         (_g8077780792_ _g8077880796_)))))
                             (_g8077680836_ (list _tgt80675_ _hd80673_)))))
                   (if (gx#stx-null? _hd80673_)
                       (let* ((_g8084080848_
                               (lambda (_g8084180844_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g8084180844_)))
                              (_g8083980866_
                               (lambda (_g8084180852_)
                                 ((lambda (_L80855_)
                                    (let ()
                                      (let ((__tmp81538
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp81532
                                             (let ((__tmp81535
                                                    (let ((__tmp81537
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp81536
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L80855_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp81537 __tmp81536)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp81533
                                                    (let ((__tmp81534
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E80668_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K80676_ __tmp81534))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp81535 __tmp81533))))
                                        (declare (not safe))
                                        (cons __tmp81538 __tmp81532))))
                                  _g8084180852_))))
                         (_g8083980866_ _tgt80675_))
                       (if (gx#stx-datum? _hd80673_)
                           (let* ((_g8087080889_
                                   (lambda (_g8087180885_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g8087180885_)))
                                  (_g8086980947_
                                   (lambda (_g8087180893_)
                                     (if (gx#stx-pair? _g8087180893_)
                                         (let ((_e8087780896_
                                                (gx#syntax-e _g8087180893_)))
                                           (let ((_hd8087680900_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e8087780896_)))
                                                 (_tl8087580903_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e8087780896_))))
                                             (if (gx#stx-pair? _tl8087580903_)
                                                 (let ((_e8088080906_
                                                        (gx#syntax-e
                                                         _tl8087580903_)))
                                                   (let ((_hd8087980910_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e8088080906_)))
                                                         (_tl8087880913_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e8088080906_))))
                                                     (if (gx#stx-pair?
                                                          _tl8087880913_)
                                                         (let ((_e8088380916_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl8087880913_)))
                   (let ((_hd8088280920_
                          (let () (declare (not safe)) (##car _e8088380916_)))
                         (_tl8088180923_
                          (let () (declare (not safe)) (##cdr _e8088380916_))))
                     (if (gx#stx-null? _tl8088180923_)
                         ((lambda (_L80926_ _L80928_ _L80929_)
                            (let ()
                              (let ((__tmp81531 (gx#datum->syntax '#f 'if))
                                    (__tmp81519
                                     (let ((__tmp81522
                                            (let ((__tmp81523
                                                   (let ((__tmp81528
                                                          (let ((__tmp81530
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp81529
                         (let () (declare (not safe)) (cons _L80929_ '()))))
                    (declare (not safe))
                    (cons __tmp81530 __tmp81529)))
                 (__tmp81524
                  (let ((__tmp81525
                         (let ((__tmp81527 (gx#datum->syntax '#f 'quote))
                               (__tmp81526
                                (let ()
                                  (declare (not safe))
                                  (cons _L80928_ '()))))
                           (declare (not safe))
                           (cons __tmp81527 __tmp81526))))
                    (declare (not safe))
                    (cons __tmp81525 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp81528
                                                           __tmp81524))))
                                              (declare (not safe))
                                              (cons _L80926_ __tmp81523)))
                                           (__tmp81520
                                            (let ((__tmp81521
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E80668_ '()))))
                                              (declare (not safe))
                                              (cons _K80676_ __tmp81521))))
                                       (declare (not safe))
                                       (cons __tmp81522 __tmp81520))))
                                (declare (not safe))
                                (cons __tmp81531 __tmp81519))))
                          _hd8088280920_
                          _hd8087980910_
                          _hd8087680900_)
                         (_g8087080889_ _g8087180893_))))
                 (_g8087080889_ _g8087180893_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g8087080889_
                                                  _g8087180893_))))
                                         (_g8087080889_ _g8087180893_)))))
                             (_g8086980947_
                              (list _tgt80675_
                                    _hd80673_
                                    (let ((_e80951_ (gx#stx-e _hd80673_)))
                                      (if (or (keyword? _e80951_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e80951_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e80951_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx80118_
                            _where80663_
                            _hd80673_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx8138381384_)
                                                    (let ((_e8068580965_
                                                           (gx#syntax-e
                                                            ___stx8138381384_)))
                                                      (let ((_tl8068380972_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e8068580965_)))
                    (_hd8068480969_
                     (let () (declare (not safe)) (##car _e8068580965_))))
                (___kont8138681387_ _tl8068380972_ _hd8068480969_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont8138881389_)))))))
                                  (_recur80670_
                                   _hd80665_
                                   _tgt80270_
                                   (let ((__tmp81567
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp81564
                                          (let ((__tmp81565
                                                 (let ((__tmp81566
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E80668_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body80667_
                                                         __tmp81566))))
                                            (declare (not safe))
                                            (cons _fender80666_ __tmp81565))))
                                     (declare (not safe))
                                     (cons __tmp81567 __tmp81564))))))
                             (_generate-clauses80278_
                              (lambda (_clauses80401_)
                                (let _lp80404_ ((_rest80407_ _clauses80401_)
                                                (_E80409_ (gx#genident 'E))
                                                (_r80410_ '()))
                                  (let* ((___stx8141981420_ _rest80407_)
                                         (_g8041380425_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx8141981420_))))
                                    (let ((___kont8142281423_
                                           (lambda (_L80490_ _L80492_)
                                             (let* ((___stx8139981400_
                                                     _L80492_)
                                                    (_g8050480515_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx8139981400_))))
                                               (let ((___kont8140281403_
                                                      (lambda (_L80644_)
                                                        (if (gx#stx-null?
                                                             _L80490_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L80644_)
                             (let ((__tmp81576 (gx#stx-null? _L80644_)))
                               (declare (not safe))
                               (not __tmp81576)))
                        (let ((__tmp81568
                               (let ((__tmp81569
                                      (let ((__tmp81570
                                             (gx#stx-wrap-source
                                              (let ((__tmp81575
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp81571
                                                     (let ((__tmp81572
                                                            (let ((__tmp81573
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp81574 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp81574 _L80644_))))
                      (declare (not safe))
                      (cons __tmp81573 '()))))
               (declare (not safe))
               (cons '() __tmp81572))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp81575 __tmp81571))
                                              (gx#stx-source _L80492_))))
                                        (declare (not safe))
                                        (cons __tmp81570 '()))))
                                 (declare (not safe))
                                 (cons _E80409_ __tmp81569))))
                          (declare (not safe))
                          (cons __tmp81568 _r80410_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx80118_
                         _L80492_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx80118_
                     _L80492_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont8140481405_
                                                      (lambda ()
                                                        (let* ((_g8052680534_
                                                                (lambda (_g8052780530_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g8052780530_)))
                       (_g8052580623_
                        (lambda (_g8052780538_)
                          ((lambda (_L80541_)
                             (let ()
                               (let* ((_g8055780565_
                                       (lambda (_g8055880561_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g8055880561_)))
                                      (_g8055680619_
                                       (lambda (_g8055880569_)
                                         ((lambda (_L80572_)
                                            (let ()
                                              (let* ((_g8058580593_
                                                      (lambda (_g8058680589_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g8058680589_)))
                                                     (_g8058480615_
                                                      (lambda (_g8058680597_)
                                                        ((lambda (_L80600_)
                                                           (let ()
                                                             (let ()
                                                               (_lp80404_
                                                                _L80490_
                                                                _L80541_
                                                                (let ((__tmp81577
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp81578
                                      (let ()
                                        (declare (not safe))
                                        (cons _L80600_ '()))))
                                 (declare (not safe))
                                 (cons _E80409_ __tmp81578))))
                          (declare (not safe))
                          (cons __tmp81577 _r80410_))))))
                 _g8058680597_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g8058480615_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp81581
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp81579
                                                         (let ((__tmp81580
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L80572_ '()))))
                   (declare (not safe))
                   (cons '() __tmp81580))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp81581
                                                          __tmp81579))
                                                  (gx#stx-source _L80492_))))))
                                          _g8055880569_))))
                                 (_g8055680619_
                                  (_generate-clause80275_
                                   _L80492_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L80541_ '())))))))
                           _g8052780538_))))
                  (_g8052580623_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx8139981400_)
                                                     (let ((_e8050980634_
                                                            (gx#syntax-e
                                                             ___stx8139981400_)))
                                                       (let ((_tl8050780641_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e8050980634_)))
                     (_hd8050880638_
                      (let () (declare (not safe)) (##car _e8050980634_))))
                 (if (gx#identifier? _hd8050880638_)
                     (if (gx#free-identifier=? |gx[1]#_g81582_| _hd8050880638_)
                         (___kont8140281403_ _tl8050780641_)
                         (___kont8140481405_))
                     (___kont8140481405_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont8140481405_))))))
                                          (___kont8142481425_
                                           (lambda ()
                                             (let* ((_g8043680444_
                                                     (lambda (_g8043780440_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g8043780440_)))
                                                    (_g8043580469_
                                                     (lambda (_g8043780448_)
                                                       ((lambda (_L80451_)
                                                          (let ()
                                                            (let ((__tmp81583
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp81584
                                  (let ((__tmp81585
                                         (gx#stx-wrap-source
                                          (let ((__tmp81593
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp81586
                                                 (let ((__tmp81587
                                                        (let ((__tmp81588
                                                               (let ((__tmp81592
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp81589
                              (let ((__tmp81590
                                     (let ((__tmp81591
                                            (let ()
                                              (declare (not safe))
                                              (cons _L80451_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp81591))))
                                (declare (not safe))
                                (cons '#f __tmp81590))))
                         (declare (not safe))
                         (cons __tmp81592 __tmp81589))))
                  (declare (not safe))
                  (cons __tmp81588 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp81587))))
                                            (declare (not safe))
                                            (cons __tmp81593 __tmp81586))
                                          (gx#stx-source _stx80118_))))
                                    (declare (not safe))
                                    (cons __tmp81585 '()))))
                             (declare (not safe))
                             (cons _E80409_ __tmp81584))))
                      (declare (not safe))
                      (cons __tmp81583 _r80410_))))
                _g8043780448_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g8043580469_ _tgt80270_)))))
                                      (if (gx#stx-pair? ___stx8141981420_)
                                          (let ((_e8041980480_
                                                 (gx#syntax-e
                                                  ___stx8141981420_)))
                                            (let ((_tl8041780487_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e8041980480_)))
                                                  (_hd8041880484_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e8041980480_))))
                                              (___kont8142281423_
                                               _tl8041780487_
                                               _hd8041880484_)))
                                          (___kont8142481425_))))))))
                      (let* ((_bind80280_
                              (_generate-clauses80278_ _clauses80273_))
                             (_g8028380300_
                              (lambda (_g8028480296_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g8028480296_)))
                             (_g8028280397_
                              (lambda (_g8028480304_)
                                (if (gx#stx-pair/null? _g8028480304_)
                                    (let ((_g81594_
                                           (gx#syntax-split-splice
                                            _g8028480304_
                                            '0)))
                                      (begin
                                        (let ((_g81595_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g81594_)
                                                     (##vector-length _g81594_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g81595_ 2)))
                                              (error "Context expects 2 values"
                                                     _g81595_)))
                                        (let ((_target8028680307_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g81594_ 0)))
                                              (_tl8028880310_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g81594_ 1))))
                                          (if (gx#stx-null? _tl8028880310_)
                                              (letrec ((_loop8028980313_
                                                        (lambda (_hd8028780317_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try8029380320_)
                  (if (gx#stx-pair? _hd8028780317_)
                      (let ((_e8029080323_ (gx#syntax-e _hd8028780317_)))
                        (let ((_lp-hd8029180327_
                               (let ()
                                 (declare (not safe))
                                 (##car _e8029080323_)))
                              (_lp-tl8029280330_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e8029080323_))))
                          (_loop8028980313_
                           _lp-tl8029280330_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd8029180327_ _bind-try8029380320_)))))
                      (let ((_bind-try8029480333_
                             (reverse _bind-try8029380320_)))
                        ((lambda (_L80337_)
                           (let ()
                             (let* ((_g8035580363_
                                     (lambda (_g8035680359_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g8035680359_)))
                                    (_g8035480393_
                                     (lambda (_g8035680367_)
                                       ((lambda (_L80370_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp81601
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp81596
                                                     (let ((__tmp81599
                                                            (let ((__tmp81600
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g8038480387_ _g8038580390_)
                             (let ()
                               (declare (not safe))
                               (cons _g8038480387_ _g8038580390_)))))
                      (declare (not safe))
                      (foldr1 __tmp81600 '() _L80337_)))
                   (__tmp81597
                    (let ((__tmp81598
                           (let () (declare (not safe)) (cons _L80370_ '()))))
                      (declare (not safe))
                      (cons __tmp81598 '()))))
               (declare (not safe))
               (cons __tmp81599 __tmp81597))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp81601
                                                      __tmp81596)))))
                                        _g8035680367_))))
                               (_g8035480393_ (car (last _bind80280_))))))
                         _bind-try8029480333_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop8028980313_
                                                 _target8028680307_
                                                 '()))
                                              (_g8028380300_ _g8028480304_)))))
                                    (_g8028380300_ _g8028480304_)))))
                        (_g8028280397_ _bind80280_))))))
          (let* ((_g8012480143_
                  (lambda (_g8012580139_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g8012580139_)))
                 (_g8012380266_
                  (lambda (_g8012580147_)
                    (if (gx#stx-pair? _g8012580147_)
                        (let ((_e8013180150_ (gx#syntax-e _g8012580147_)))
                          (let ((_hd8013080154_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e8013180150_)))
                                (_tl8012980157_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e8013180150_))))
                            (if (gx#stx-pair? _tl8012980157_)
                                (let ((_e8013480160_
                                       (gx#syntax-e _tl8012980157_)))
                                  (let ((_hd8013380164_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e8013480160_)))
                                        (_tl8013280167_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e8013480160_))))
                                    (if (gx#stx-pair? _tl8013280167_)
                                        (let ((_e8013780170_
                                               (gx#syntax-e _tl8013280167_)))
                                          (let ((_hd8013680174_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e8013780170_)))
                                                (_tl8013580177_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e8013780170_))))
                                            ((lambda (_L80180_
                                                      _L80182_
                                                      _L80183_)
                                               (if (and (gx#identifier-list?
                                                         _L80182_)
                                                        (gx#stx-list?
                                                         _L80180_))
                                                   (let* ((_g8020180209_
                                                           (lambda (_g8020280205_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g8020280205_)))
                                                          (_g8020080262_
                                                           (lambda (_g8020280213_)
                                                             ((lambda (_L80216_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g8022880236_
                                  (lambda (_g8022980232_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g8022980232_)))
                                 (_g8022780258_
                                  (lambda (_g8022980240_)
                                    ((lambda (_L80243_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp81607
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp81602
                                                  (let ((__tmp81604
                                                         (let ((__tmp81605
                                                                (let ((__tmp81606
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L80183_ '()))))
                          (declare (not safe))
                          (cons _L80216_ __tmp81606))))
                   (declare (not safe))
                   (cons __tmp81605 '())))
                (__tmp81603 (let () (declare (not safe)) (cons _L80243_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp81604
                                                          __tmp81603))))
                                             (declare (not safe))
                                             (cons __tmp81607 __tmp81602)))))
                                     _g8022980240_))))
                            (_g8022780258_
                             (_generate80121_
                              _L80216_
                              (gx#syntax->list _L80182_)
                              _L80180_)))))
                      _g8020280213_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g8020080262_
                                                      (gx#genident 'e)))
                                                   (_g8012480143_
                                                    _g8012580147_)))
                                             _tl8013580177_
                                             _hd8013680174_
                                             _hd8013380164_)))
                                        (_g8012480143_ _g8012580147_))))
                                (_g8012480143_ _g8012580147_))))
                        (_g8012480143_ _g8012580147_)))))
            (_g8012380266_ _stx80118_)))))))
